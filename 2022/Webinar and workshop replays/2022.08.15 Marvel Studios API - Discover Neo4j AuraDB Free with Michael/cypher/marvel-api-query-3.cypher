// 3) For all of the Characters we just loaded, load all of the related ComicIssue, Series, Story, Event, and Creator objects. I am just populating basic info on each of the nodes here.
WITH apoc.date.format(timestamp(), "ms", 'yyyyMMddHHmmss') AS ts
WITH "&ts=" + ts + "&apikey=" + $marvel_public + "&hash=" + apoc.util.md5([ts,$marvel_private,$marvel_public]) as suffix
CALL apoc.periodic.iterate('MATCH (c:Character) WHERE c.resourceURI IS NOT NULL AND NOT exists((c)<-[:INCLUDES]-()) RETURN c LIMIT 100',
'CALL apoc.util.sleep(2000)
CALL apoc.load.json(c.resourceURI+"/comics?format=comic&formatType=comic&limit=100"+$suffix)
YIELD value WITH c, value.data.results as results WHERE results IS NOT NULL
UNWIND results as result MERGE (comic:ComicIssue {id: result.id})
  ON CREATE SET comic.name = result.title, comic.issueNumber = result.issueNumber, comic.pageCount = result.pageCount, comic.resourceURI = result.resourceURI, comic.thumbnail = result.thumbnail.path+"."+result.thumbnail.extension
WITH c, comic, result
MERGE (comic)-[r:INCLUDES]->(c)
WITH c, comic, result WHERE result.series IS NOT NULL
UNWIND result.series as comicSeries
MERGE (series:Series {id: toInteger(split(comicSeries.resourceURI,"/")[-1])})
  ON CREATE SET series.name = comicSeries.name, series.resourceURI = comicSeries.resourceURI
WITH c, comic, series, result
MERGE (comic)-[r2:BELONGS_TO]->(series)
WITH c, comic, result, result.creators.items as items WHERE items IS NOT NULL
UNWIND items as item
MERGE (creator:Creator {id: toInteger(split(item.resourceURI,"/")[-1])})
  ON CREATE SET creator.name = item.name, creator.resourceURI = item.resourceURI
WITH c, comic, result, creator
MERGE (comic)-[r3:CREATED_BY]->(creator)
WITH c, comic, result, result.stories.items as items WHERE items IS NOT NULL
UNWIND items as item
MERGE (story:Story {id: toInteger(split(item.resourceURI,"/")[-1])})
  ON CREATE SET story.name = item.name, story.resourceURI = item.resourceURI, story.type = item.type
WITH c, comic, result, story
MERGE (comic)-[r4:MADE_OF]->(story)
WITH c, comic, result, result.events.items AS items WHERE items IS NOT NULL
UNWIND items as item
MERGE (event:Event {id: toInteger(split(item.resourceURI,"/")[-1])})
  ON CREATE SET event.name = item.name, event.resourceURI = item.resourceURI
MERGE (comic)-[r5:PART_OF]->(event)',
{batchSize: 20, iterateList:false, retries:2, params:{suffix:suffix}})
YIELD batches, total, timeTaken, committedOperations, failedOperations, failedBatches , retries, errorMessages , batch , operations, wasTerminated
RETURN batches, total, timeTaken, committedOperations, failedOperations, failedBatches , retries, errorMessages , batch , operations, wasTerminated;

// Example output
// ╒═════════╤═══════╤═══════════╤═════════════════════╤══════════════════╤═══════════════╤═════════╤═══════════════╤════════════════════════════════════════════════╤════════════════════════════════════════════════════╤═══════════════╕
// │"batches"│"total"│"timeTaken"│"committedOperations"│"failedOperations"│"failedBatches"│"retries"│"errorMessages"│"batch"                                         │"operations"                                        │"wasTerminated"│
// ╞═════════╪═══════╪═══════════╪═════════════════════╪══════════════════╪═══════════════╪═════════╪═══════════════╪════════════════════════════════════════════════╪════════════════════════════════════════════════════╪═══════════════╡
// │5        │100    │527        │100                  │0                 │0              │0        │{}             │{"total":5,"committed":5,"failed":0,"errors":{}}│{"total":100,"committed":100,"failed":0,"errors":{}}│false          │
// └─────────┴───────┴───────────┴─────────────────────┴──────────────────┴───────────────┴─────────┴───────────────┴────────────────────────────────────────────────┴────────────────────────────────────────────────────┴───────────────┘
