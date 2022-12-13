// Marvel API: https://developer.marvel.com/

// 1) Create indexes for improving performance (also adds constraints for unique properties).

:params { marvel_public: "<your public API key here>", marvel_private: "<your private API key here>" };
//If executing in Neo4j Browser, use below syntax
//:params "marvel_public": "<your public API key here>", "marvel_private": "<your private API key here>"

CREATE CONSTRAINT ON (char:Character) ASSERT char.id IS UNIQUE;
CREATE CONSTRAINT ON (cre:Creator) ASSERT cre.id IS UNIQUE;
CREATE CONSTRAINT ON (issue:ComicIssue) ASSERT issue.id IS UNIQUE;
CREATE CONSTRAINT ON (series:Series) ASSERT series.id IS UNIQUE;
CREATE CONSTRAINT ON (story:Story) ASSERT story.id IS UNIQUE;
CREATE CONSTRAINT ON (event:Event) ASSERT event.id IS UNIQUE;

CREATE INDEX ON :Character(name);
CREATE INDEX ON :Character(resourceURI);
CREATE INDEX ON :Creator(resourceURI);
CREATE INDEX ON :ComicIssue(resourceURI);
CREATE INDEX ON :Series(resourceURI);
CREATE INDEX ON :Story(resourceURI);
CREATE INDEX ON :Event(resourceURI);
