// Marvel API: https://developer.marvel.com/

// 1) Create indexes for improving performance (also adds constraints for unique properties).

:params { marvel_public: "<your public API key here>", marvel_private: "<your private API key here>" };
//If executing in Neo4j Browser, use below syntax
//:params "marvel_public": "<your public API key here>", "marvel_private": "<your private API key here>"

// Neo4j v4.x
// CREATE CONSTRAINT ON (char:Character) ASSERT char.id IS UNIQUE;
// CREATE CONSTRAINT ON (cre:Creator) ASSERT cre.id IS UNIQUE;
// CREATE CONSTRAINT ON (issue:ComicIssue) ASSERT issue.id IS UNIQUE;
// CREATE CONSTRAINT ON (series:Series) ASSERT series.id IS UNIQUE;
// CREATE CONSTRAINT ON (story:Story) ASSERT story.id IS UNIQUE;
// CREATE CONSTRAINT ON (event:Event) ASSERT event.id IS UNIQUE;

// CREATE INDEX ON :Character(name);
// CREATE INDEX ON :Character(resourceURI);
// CREATE INDEX ON :Creator(resourceURI);
// CREATE INDEX ON :ComicIssue(resourceURI);
// CREATE INDEX ON :Series(resourceURI);
// CREATE INDEX ON :Story(resourceURI);
// CREATE INDEX ON :Event(resourceURI);

// Neo4j v5.x
// TROUBLESHOOTING: If you want to clear your schema (remove all constraints, indexes, etc):
//    Neo4j Browser
//    $ CALL apoc.schema.assert({}, {})
//    .. rebuild your indexes and constraints ..
//    $ :schema
CREATE CONSTRAINT FOR (char:Character) REQUIRE char.id IS UNIQUE;
CREATE CONSTRAINT FOR (cre:Creator) REQUIRE cre.id IS UNIQUE;
CREATE CONSTRAINT FOR (issue:ComicIssue) REQUIRE issue.id IS UNIQUE;
CREATE CONSTRAINT FOR (series:Series) REQUIRE series.id IS UNIQUE;
CREATE CONSTRAINT FOR (story:Story) REQUIRE story.id IS UNIQUE;
CREATE CONSTRAINT FOR (event:Event) REQUIRE event.id IS UNIQUE;

CREATE INDEX FOR (c:Character) ON (c.name);
CREATE INDEX FOR (c:Character) ON (c.resourceURI);
CREATE INDEX FOR (cr:Creator) ON (cr.resourceURI);
CREATE INDEX FOR (ci:ComicIssue) ON (ci.resourceURI);
CREATE INDEX FOR (s:Series) ON (s.resourceURI);
CREATE INDEX FOR (st:Story) ON (st.resourceURI);
CREATE INDEX FOR (e:Event) ON (e.resourceURI);
