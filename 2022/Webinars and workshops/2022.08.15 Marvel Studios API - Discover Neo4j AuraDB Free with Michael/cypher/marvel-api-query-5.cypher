// 5) For all of the Characters (names starting with "A"), hydrate the Event nodes with a few more properties.

// Neo4j v4.x
// WITH apoc.date.format(timestamp(), "ms", 'yyyyMMddHHmmss') AS ts
// WITH "&ts=" + ts + "&apikey=" + $marvel_public + "&hash=" + apoc.util.md5([ts,$marvel_private,$marvel_public]) as suffix
// CALL apoc.periodic.iterate('MATCH (event:Event) WHERE event.resourceURI IS NOT NULL AND NOT exists(event.start) RETURN DISTINCT event LIMIT 100',
// 'CALL apoc.util.sleep(2000) CALL apoc.load.json(event.resourceURI+"?limit=100"+$suffix) YIELD value
// UNWIND value.data.results as result
// MERGE (e:Event {id: result.id})
//   SET e.start = result.start, e.end = result.end', {batchSize: 20, iterateList:false, params: {suffix:suffix}})
// YIELD batches, total, timeTaken, committedOperations, failedOperations, failedBatches , retries, errorMessages , batch , operations, wasTerminated
// RETURN batches, total, timeTaken, committedOperations, failedOperations, failedBatches , retries, errorMessages , batch , operations, wasTerminated;

// Updated for Neo4j v5.2.x
WITH apoc.date.format(timestamp(), "ms", 'yyyyMMddHHmmss') AS ts
WITH "&ts=" + ts + "&apikey=" + $marvel_public + "&hash=" + apoc.util.md5([ts,$marvel_private,$marvel_public]) as suffix
CALL apoc.periodic.iterate('MATCH (event:Event) WHERE event.resourceURI IS NOT NULL OR event.start IS NOT NULL RETURN DISTINCT event LIMIT 100',
'CALL apoc.util.sleep(2000) CALL apoc.load.json(event.resourceURI+"?limit=100"+$suffix) YIELD value
UNWIND value.data.results as result
MERGE (e:Event {id: result.id})
  SET e.start = result.start, e.end = result.end', {batchSize: 20, iterateList:false, params: {suffix:suffix}})
YIELD batches, total, timeTaken, committedOperations, failedOperations, failedBatches , retries, errorMessages , batch , operations, wasTerminated
RETURN batches, total, timeTaken, committedOperations, failedOperations, failedBatches , retries, errorMessages , batch , operations, wasTerminated;

// Example output
// ╒═════════╤═══════╤═══════════╤═════════════════════╤══════════════════╤═══════════════╤═════════╤═══════════════╤════════════════════════════════════════════════╤══════════════════════════════════════════════════╤═══════════════╕
// │"batches"│"total"│"timeTaken"│"committedOperations"│"failedOperations"│"failedBatches"│"retries"│"errorMessages"│"batch"                                         │"operations"                                      │"wasTerminated"│
// ╞═════════╪═══════╪═══════════╪═════════════════════╪══════════════════╪═══════════════╪═════════╪═══════════════╪════════════════════════════════════════════════╪══════════════════════════════════════════════════╪═══════════════╡
// │3        │55     │117        │55                   │0                 │0              │0        │{}             │{"total":3,"committed":3,"failed":0,"errors":{}}│{"total":55,"committed":55,"failed":0,"errors":{}}│false          │
// └─────────┴───────┴───────────┴─────────────────────┴──────────────────┴───────────────┴─────────┴───────────────┴────────────────────────────────────────────────┴──────────────────────────────────────────────────┴───────────────┘
