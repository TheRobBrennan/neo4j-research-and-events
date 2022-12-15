// 4) For all of the Series that have not been loaded yet, load the Series.

// Neo4j v4.x
// WITH apoc.date.format(timestamp(), "ms", 'yyyyMMddHHmmss') AS ts
// WITH "&ts=" + ts + "&apikey=" + $marvel_public + "&hash=" + apoc.util.md5([ts,$marvel_private,$marvel_public]) as suffix
// CALL apoc.periodic.iterate('MATCH (s:Series) WHERE s.resourceURI IS NOT NULL AND not exists(s.startYear) RETURN s LIMIT 100',
// 'CALL apoc.util.sleep(2000)
// CALL apoc.load.json(s.resourceURI+"?limit=100" + $suffix) YIELD value
// WITH value.data.results as results WHERE results IS NOT NULL
// UNWIND results as result
// MERGE (series:Series {id: result.id})
//   SET series.startYear = result.startYear, series.endYear = result.endYear, series.rating = result.rating,
//       series.thumbnail = result.thumbnail.path+"."+result.thumbnail.extension',
// {batchSize: 20, iterateList: false, params: {suffix:suffix}})
// YIELD batches, total, timeTaken, committedOperations, failedOperations, failedBatches , retries, errorMessages , batch , operations, wasTerminated
// RETURN batches, total, timeTaken, committedOperations, failedOperations, failedBatches , retries, errorMessages , batch , operations, wasTerminated;

// Updated for Neo4j v5.2.x
WITH apoc.date.format(timestamp(), "ms", 'yyyyMMddHHmmss') AS ts
WITH "&ts=" + ts + "&apikey=" + $marvel_public + "&hash=" + apoc.util.md5([ts,$marvel_private,$marvel_public]) as suffix
CALL apoc.periodic.iterate('MATCH (s:Series) WHERE s.resourceURI IS NOT NULL OR s.startYear IS NOT NULL RETURN s LIMIT 100',
'CALL apoc.util.sleep(2000)
CALL apoc.load.json(s.resourceURI+"?limit=100" + $suffix) YIELD value
WITH value.data.results as results WHERE results IS NOT NULL
UNWIND results as result
MERGE (series:Series {id: result.id})
  SET series.startYear = result.startYear, series.endYear = result.endYear, series.rating = result.rating,
      series.thumbnail = result.thumbnail.path+"."+result.thumbnail.extension',
{batchSize: 20, iterateList: false, params: {suffix:suffix}})
YIELD batches, total, timeTaken, committedOperations, failedOperations, failedBatches , retries, errorMessages , batch , operations, wasTerminated
RETURN batches, total, timeTaken, committedOperations, failedOperations, failedBatches , retries, errorMessages , batch , operations, wasTerminated;

// Example output
// ╒═════════╤═══════╤═══════════╤═════════════════════╤══════════════════╤═══════════════╤═════════╤═══════════════╤════════════════════════════════════════════════╤════════════════════════════════════════════════════╤═══════════════╕
// │"batches"│"total"│"timeTaken"│"committedOperations"│"failedOperations"│"failedBatches"│"retries"│"errorMessages"│"batch"                                         │"operations"                                        │"wasTerminated"│
// ╞═════════╪═══════╪═══════════╪═════════════════════╪══════════════════╪═══════════════╪═════════╪═══════════════╪════════════════════════════════════════════════╪════════════════════════════════════════════════════╪═══════════════╡
// │5        │100    │220        │100                  │0                 │0              │0        │{}             │{"total":5,"committed":5,"failed":0,"errors":{}}│{"total":100,"committed":100,"failed":0,"errors":{}}│false          │
// └─────────┴───────┴───────────┴─────────────────────┴──────────────────┴───────────────┴─────────┴───────────────┴────────────────────────────────────────────────┴────────────────────────────────────────────────────┴───────────────┘
