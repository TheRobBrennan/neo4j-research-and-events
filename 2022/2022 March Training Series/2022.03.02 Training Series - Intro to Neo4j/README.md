# Welcome

This section contains my thoughts from the `Training Series - Intro to Neo4j` webinar presented at 7am PST on Wednesday, March 2nd, 2022.

## Getting started

The first part of this webinar covered an excellent overview of some example graphs and use cases.

Let's take a look at an example that processes a bunch of documents and files to generate a graph to investigate the Paradise Papers by the International Consortium of Investigative Journalists (ICIJ):

![screenshots/20220302-01-ICIJ-paradise-papers.png](screenshots/20220302-01-ICIJ-paradise-papers.png)

The essential piece for the hands-on workshop is to make sure that you have created a free account in [Neo4j Aura](https://console.neo4j.io) that creates a database on the free tier using the example Movies dataset.

I've created a `.env.sample` file for reference. Please copy that to `.env` and then you can safely store your credentials without sharing them accidentally with the world on GitHub 🤓

## Identifying good graph scenarios

![screenshots/20220302-02-identifying-scenarios-1.png](screenshots/20220302-02-identifying-scenarios-1.png)
![screenshots/20220302-03-identifying-scenarios-2.png](screenshots/20220302-03-identifying-scenarios-2.png)
![screenshots/20220302-04-identifying-scenarios-3.png](screenshots/20220302-04-identifying-scenarios-3.png)
![screenshots/20220302-05-identifying-scenarios-4.png](screenshots/20220302-05-identifying-scenarios-4.png)

## Property graph database

![screenshots/20220302-06-property-graph-database.png](screenshots/20220302-06-property-graph-database.png)

## Querying the graph

![screenshots/20220302-07-cypher.png](screenshots/20220302-07-cypher.png)

Quick reference - you can find the latest Neo4j reference card for Cypher at [http://dev.neo4j.com/refcard](http://dev.neo4j.com/refcard)

![screenshots/20220302-08-neo4j-reference-card.png](screenshots/20220302-08-neo4j-reference-card.png)

## Use the Aura Movies database you created

Connect to your database using Neo4j Browser and start querying. 🤓

Example query
![screenshots/20220302-09-example-query.png](screenshots/20220302-09-example-query.png)

Visualize the graph database schema
![screenshots/20220302-10-schema-visualization.png](screenshots/20220302-10-schema-visualization.png)

Zoom out to view results from the query
![screenshots/20220302-11-zoom-out-to-view-results.png](screenshots/20220302-11-zoom-out-to-view-results.png)

### Queries

Find all nodes with a `Movie` label
![screenshots/20220302-12-query-for-movie-labels.png](screenshots/20220302-12-query-for-movie-labels.png)

Table view
![screenshots/20220302-13-table-view-for-results.png](screenshots/20220302-13-table-view-for-results.png)

Query for movie title and release year
![screenshots/20220302-14-query-for-movie-title-and-release-year.png](screenshots/20220302-14-query-for-movie-title-and-release-year.png)

Query all `Movie` and `Person` nodes - no relationship
![screenshots/20220302-15-query-for-movies-and-people-no-relationship.png](screenshots/20220302-15-query-for-movies-and-people-no-relationship.png)

Display nodes with any relationship between a `Person` and a `Movie`
![screenshots/20220302-16-query-for-person-nodes-with-any-relationship-to-a-movie.png](screenshots/20220302-16-query-for-person-nodes-with-any-relationship-to-a-movie.png)
![screenshots/20220302-17-query-for-person-nodes-with-any-relationship-to-a-movie-table-view.png](screenshots/20220302-17-query-for-person-nodes-with-any-relationship-to-a-movie-table-view.png)

Let's find all the people that have `ACTED_IN` a `Movie`
![screenshots/20220302-18-query-for-person-nodes-with-an-ACTED_IN-relationship-to-a-movie.png](screenshots/20220302-18-query-for-person-nodes-with-an-ACTED_IN-relationship-to-a-movie.png)
![screenshots/20220302-19-query-for-person-nodes-with-an-ACTED_IN-relationship-to-a-movie-with-title-name-and-roles.png](screenshots/20220302-19-query-for-person-nodes-with-an-ACTED_IN-relationship-to-a-movie-with-title-name-and-roles.png)

What about building upon the previous query to find all the people who acted in those same movies AND the other actors? Easy.
![screenshots/20220302-20-query-for-people-who-have-acted-in-movies-along-with-the-other-actors-and-movies-other-actors-were-in.png](screenshots/20220302-20-query-for-people-who-have-acted-in-movies-along-with-the-other-actors-and-movies-other-actors-were-in.png)

Query for specific actors
![screenshots/20220302-21-query-for-keanu-reeves.png](screenshots/20220302-21-query-for-keanu-reeves.png)
![screenshots/20220302-22-query-for-tom-hanks.png](screenshots/20220302-22-query-for-tom-hanks.png)
![screenshots/20220302-23-query-for-tom-hanks-using-a-where-clause.png](screenshots/20220302-23-query-for-tom-hanks-using-a-where-clause.png)
![screenshots/20220302-24-query-for-tom-hanks-using-a-where-clause-and-finding-movies-released-after-a-specific-year.png](screenshots/20220302-24-query-for-tom-hanks-using-a-where-clause-and-finding-movies-released-after-a-specific-year.png)

Let's have fun with the movies Tom Hanks `ACTED_IN` and return some results.
![screenshots/20220302-25-query-to-find-the-number-of-movies-tom-hanks-acted-in.png](screenshots/20220302-25-query-to-find-the-number-of-movies-tom-hanks-acted-in.png)
![screenshots/20220302-26-query-to-find-the-number-of-movies-tom-hanks-acted-in-using-collect-to-create-a-list-of-titles.png](screenshots/20220302-26-query-to-find-the-number-of-movies-tom-hanks-acted-in-using-collect-to-create-a-list-of-titles.png)
![screenshots/20220302-27-query-to-find-the-number-of-movies-tom-hanks-acted-in-using-collect-to-create-a-custom-object.png](screenshots/20220302-27-query-to-find-the-number-of-movies-tom-hanks-acted-in-using-collect-to-create-a-custom-object.png)
![screenshots/20220302-27a-query-to-find-the-number-of-movies-tom-hanks-acted-in-using-collect-to-create-a-custom-object-with-shorthand-syntax.png](screenshots/20220302-27a-query-to-find-the-number-of-movies-tom-hanks-acted-in-using-collect-to-create-a-custom-object-with-shorthand-syntax.png)

What about finding the top 3 people in our movies dataset?
![screenshots/20220302-28-find-the-top-three-people-in-movies-who-have-directed-any-movies.png](screenshots/20220302-28-find-the-top-three-people-in-movies-who-have-directed-any-movies.png)
![screenshots/20220302-29-find-the-top-three-people-in-movies-and-see-if-they-optionally-directed-any-movies.png](screenshots/20220302-29-find-the-top-three-people-in-movies-and-see-if-they-optionally-directed-any-movies.png)

Example using `path`
![screenshots/20220302-30-example-using-path.png](screenshots/20220302-30-example-using-path.png)

#### The Kevin Bacon problem

![screenshots/20220302-31-the-kevin-bacon-problem.png](screenshots/20220302-31-the-kevin-bacon-problem.png)

Find people three hops away from Kevin Bacon
![screenshots/20220302-32-three-hops-away-from-kevin-bacon.png](screenshots/20220302-32-three-hops-away-from-kevin-bacon.png)

Find people five hops away from Kevin Bacon
![screenshots/20220302-33-five-hops-away-from-kevin-bacon.png](screenshots/20220302-33-five-hops-away-from-kevin-bacon.png)

Find the shortest path between Kevin Bacon and Meg Ryan
![screenshots/20220302-34-shortest-path-between-kevin-bacon-and-meg-ryan.png](screenshots/20220302-34-shortest-path-between-kevin-bacon-and-meg-ryan.png)
![screenshots/20220302-35-shortest-path-between-kevin-bacon-and-meg-ryan-graph-results.png](screenshots/20220302-35-shortest-path-between-kevin-bacon-and-meg-ryan-graph-results.png)

Find all the shortest paths between Kevin Bacon and Meg Ryan
![screenshots/20220302-36-all-shortest-paths-between-kevin-bacon-and-meg-ryan.png](screenshots/20220302-36-all-shortest-paths-between-kevin-bacon-and-meg-ryan.png)

Find the top three shortest paths between Kevin Bacon and Meg Ryan
![screenshots/20220302-37-find-the-top-three-shortest-paths-to-kevin-bacon.png](screenshots/20220302-37-find-the-top-three-shortest-paths-to-kevin-bacon.png)

### What about deleting records that match a pattern?

![screenshots/20220302-38-delete-node-and-all-relationships-involving-it.png](screenshots/20220302-38-delete-node-and-all-relationships-involving-it.png)

### Creating data and relationships

Cypher does offer a `CREATE` statement that will create data and relationships. However, it will constantly create and recreate to your heart's content. Use `MERGE` to upsert data instead.

![screenshots/20220302-39-create-a-node-only-once.png](screenshots/20220302-39-create-a-node-only-once.png)

Find a specific person and movie that we want to create a relationship between
![screenshots/20220302-40-find-a-specific-person-and-a-specific-movie.png](screenshots/20220302-40-find-a-specific-person-and-a-specific-movie.png)

Create a relationship between a specific person and movie using Cypher
![screenshots/20220302-41-create-a-relationship-between-a-specific-person-and-a-movie.png](screenshots/20220302-41-create-a-relationship-between-a-specific-person-and-a-movie.png)

## Web-based Data Importer tool from Neo4j

This is a great tool available at [https://data-importer.neo4j.io](https://data-importer.neo4j.io)
![screenshots/20220302-42-neo4j-data-importer.png](screenshots/20220302-42-neo4j-data-importer.png)
![screenshots/20220302-43-neo4j-data-importer-specify-files.png](screenshots/20220302-43-neo4j-data-importer-specify-files.png)
![screenshots/20220302-44-neo4j-data-importer-import-results.png](screenshots/20220302-44-neo4j-data-importer-import-results.png)
![screenshots/20220302-45-neo4j-data-importer-view-in-neo4j-browser.png](screenshots/20220302-45-neo4j-data-importer-view-in-neo4j-browser.png)

## EXAMPLE: Import Stack Overflow data into Neo4j

Let's see how we can use Neo4j to import and explore some data from Stack Overflow.

![screenshots/20220302-46-explore-stackoverflow.png](screenshots/20220302-46-explore-stackoverflow.png)
![screenshots/20220302-47-explore-stackoverflow.png](screenshots/20220302-47-explore-stackoverflow.png)
![screenshots/20220302-48-explore-stackoverflow.png](screenshots/20220302-48-explore-stackoverflow.png)
![screenshots/20220302-49-explore-stackoverflow-view-graph.png](screenshots/20220302-49-explore-stackoverflow-view-graph.png)
![screenshots/20220302-50-explore-stackoverflow.png](screenshots/20220302-50-explore-stackoverflow.png)
![screenshots/20220302-51-explore-stackoverflow.png](screenshots/20220302-51-explore-stackoverflow.png)
![screenshots/20220302-52-explore-stackoverflow-shortest-path.png](screenshots/20220302-52-explore-stackoverflow-shortest-path.png)
![screenshots/20220302-53-explore-stackoverflow-tags.png](screenshots/20220302-53-explore-stackoverflow-tags.png)
![screenshots/20220302-54-explore-stackoverflow-tags-related-to-other-tags.png](screenshots/20220302-54-explore-stackoverflow-tags-related-to-other-tags.png)

## What else is there?

![screenshots/20220302-56-upcoming-sessions.png](screenshots/20220302-56-upcoming-sessions.png)
![screenshots/20220302-57-graphconnect.png](screenshots/20220302-57-graphconnect.png)
