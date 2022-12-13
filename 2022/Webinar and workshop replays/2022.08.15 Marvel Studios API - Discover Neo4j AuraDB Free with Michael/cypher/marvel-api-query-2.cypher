// 2) Load chunks of Characters by name starting with each letter of the alphabet.
WITH apoc.date.format(timestamp(), "ms", 'yyyyMMddHHmmss') AS ts
WITH "&ts=" + ts + "&apikey=" + $marvel_public + "&hash=" + apoc.util.md5([ts,$marvel_private,$marvel_public]) as suffix
CALL apoc.periodic.iterate('UNWIND split("ABCDEFGHIJKLMNOPQRSTUVWXYZ","") AS letter RETURN letter',
'CALL apoc.load.json("http://gateway.marvel.com/v1/public/characters?nameStartsWith="+letter+"&orderBy=name&limit=100"+$suffix) YIELD value
UNWIND value.data.results as results
WITH results, results.comics.available AS comics
WHERE comics > 0
MERGE (char:Character {id: results.id})
  ON CREATE SET char.name = results.name, char.description = results.description, char.thumbnail = results.thumbnail.path+"."+results.thumbnail.extension,
      char.resourceURI = results.resourceURI
',{batchSize: 1, iterateList:false, params:{suffix:suffix}})
YIELD batches, total, timeTaken, committedOperations, failedOperations, failedBatches , retries, errorMessages , batch , operations, wasTerminated
RETURN batches, total, timeTaken, committedOperations, failedOperations, failedBatches , retries, errorMessages , batch , operations, wasTerminated;
