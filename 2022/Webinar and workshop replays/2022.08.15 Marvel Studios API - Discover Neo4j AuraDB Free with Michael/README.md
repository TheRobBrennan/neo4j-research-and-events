# 2022.08.15 Marvel Studios API - Discover Neo4j AuraDB Free with Michael

Monday, December 12th, 2022, 9:05pm

## Notes

Originally aired on YouTube on Monday, August 15th, 2022 - [https://www.youtube.com/watch?v=5Yvv8rEW3jk](https://www.youtube.com/watch?v=5Yvv8rEW3jk) (~54:32)

A blog post is also available for review at [https://medium.com/neo4j/discover-auradb-free-week-32-marvel-api-data-a0d5b371dc8c](https://medium.com/neo4j/discover-auradb-free-week-32-marvel-api-data-a0d5b371dc8c)

TL;DR

- [ ] Create a free AuraDB instance at [Neo4j AuraDB](https://console.neo4j.io/)
- [ ] Create a Marvel Studios developer account at [http://developer.marvel.com/docs](http://developer.marvel.com/docs)
  - [ ] NOTE: There is a limit of `3,000` API calls per day with your developer credentials
- [ ] Review the Cypher script at [https://github.com/JMHReif/graph-demo-datasets/blob/main/marvel-comics/marvel-api.cypher](https://github.com/JMHReif/graph-demo-datasets/blob/main/marvel-comics/marvel-api.cypher) and update with your credentials
  - [ ] Query 1 - Create indexes for improving performance (also adds constraints for unique properties)
  - [ ] Query 2 - Load chunks of Characters by name starting with each letter of the alphabet.
  - [ ] Query 3 - For all the Characters we just loaded, load all the related ComicIssue, Series, Story, Event, and Creator objects. I am just populating basic info on each of the nodes here.
  - [ ] Query 4 - For all the Series that have not been loaded yet, load the Series.
  - [ ] Query 5 - For all the Characters (names starting with "A"), hydrate the Event nodes with a few more properties.

### Hands-on exercise

PREREQUISITES: This section assumes you've already created a free Neo4j database on AuraDB and obtained the appropriate credentials from the Marvel Studios Developer Portal.

My annotations and notes from reviewing the Cypher queries - initially created by [Jennifer Reif](https://github.com/JMHReif) at [https://github.com/JMHReif/graph-demo-datasets/blob/main/marvel-comics/marvel-api.cypher](https://github.com/JMHReif/graph-demo-datasets/blob/main/marvel-comics/marvel-api.cypher) - will follow.

#### Query 1 - Create indexes for improving performance (also adds constraints for unique properties)

Please see [cypher/marvel-api-query-1.cypher](cypher/marvel-api-query-1.cypher)

#### Query 2 - Load chunks of Characters by name starting with each letter of the alphabet

Please see [cypher/marvel-api-query-2.cypher](cypher/marvel-api-query-2.cypher)

#### Query 3 - For all the Characters we just loaded, load all the related ComicIssue, Series, Story, Event, and Creator objects. I am just populating basic info on each of the nodes here

Please see [cypher/marvel-api-query-3.cypher](cypher/marvel-api-query-3.cypher)

#### Query 4 - For all the Series that have not been loaded yet, load the Series

Please see [cypher/marvel-api-query-4.cypher](cypher/marvel-api-query-4.cypher)

#### Query 5 - For all the Characters (names starting with "A"), hydrate the Event nodes with a few more properties

Please see [cypher/marvel-api-query-5.cypher](cypher/marvel-api-query-5.cypher)
