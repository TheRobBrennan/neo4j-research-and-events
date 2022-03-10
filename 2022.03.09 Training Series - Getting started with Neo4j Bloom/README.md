# Welcome

This section contains my thoughts from the `Training Series - Getting started with Neo4j Bloom` webinar presented at 7am PST on Wednesday, March 9th, 2022.

## Getting started

The essential piece for the hands-on workshop is to make sure that you have created a free account in [Neo4j Aura](https://console.neo4j.io) that creates a database on the free tier using the example Movies dataset.

I've created a `.env.sample` file for reference. Please copy that to `.env` and then you can safely store your credentials without sharing them accidentally with the world on GitHub 🤓

## Overview

What is Bloom? Think of Bloom as a purpose-built visualization tool. There are quite a few unique features: Low code visualization, layouts, advanced rules-based styling and filtering, custom search phrases, scene sharing, etc.

![screenshots/20220309-01-bloom-overview.png](screenshots/20220309-01-bloom-overview.png)
![screenshots/20220309-02-bloom-where-can-you-get-it.png](screenshots/20220309-02-bloom-where-can-you-get-it.png)
![screenshots/20220309-03-setting-up-your-neo4j-database.png](screenshots/20220309-03-setting-up-your-neo4j-database.png)

## Introduction to the data set

![screenshots/20220309-04-introduction-to-the-data-set.png](screenshots/20220309-04-introduction-to-the-data-set.png)
![screenshots/20220309-17-introduction-to-the-data-set.png](screenshots/20220309-17-introduction-to-the-data-set.png)

### Import data

![screenshots/20220309-05-neo4j-browser-connect.png](screenshots/20220309-05-neo4j-browser-connect.png)
![screenshots/20220309-06-neo4j-browser-import-complete.png](screenshots/20220309-06-neo4j-browser-import-complete.png)

### Setting up the Neo4j Bloom Perspective

![screenshots/20220309-07-setting-up-the-neo4j-bloom-perspective.png](screenshots/20220309-07-setting-up-the-neo4j-bloom-perspective.png)
![screenshots/20220309-08-bloom-connect.png](screenshots/20220309-08-bloom-connect.png)
![screenshots/20220309-09-bloom-empty.png](screenshots/20220309-09-bloom-empty.png)
![screenshots/20220309-10-bloom-default-perspective.png](screenshots/20220309-10-bloom-default-perspective.png)
![screenshots/20220309-11-bloom-help.png](screenshots/20220309-11-bloom-help.png)
![screenshots/20220309-12-bloom-settings.png](screenshots/20220309-12-bloom-settings.png)
![screenshots/20220309-13-bloom-create-perspective.png](screenshots/20220309-13-bloom-create-perspective.png)
![screenshots/20220309-14-bloom-generate-perspective.png](screenshots/20220309-14-bloom-generate-perspective.png)
![screenshots/20220309-15-bloom-use-perspective.png](screenshots/20220309-15-bloom-use-perspective.png)
![screenshots/20220309-16-bloom-perspective.png](screenshots/20220309-16-bloom-perspective.png)
![screenshots/20220309-18-bloom-perspective-relationships.png](screenshots/20220309-18-bloom-perspective-relationships.png)

### Bloom: Search

![screenshots/20220309-19-bloom-search.png](screenshots/20220309-19-bloom-search.png)
![screenshots/20220309-20-bloom-athletes-loading.png](screenshots/20220309-20-bloom-athletes-loading.png)
![screenshots/20220309-21-bloom-athletes-nodes.png](screenshots/20220309-21-bloom-athletes-nodes.png)
![screenshots/20220309-22-bloom-athletes-zoom.png](screenshots/20220309-22-bloom-athletes-zoom.png)
![screenshots/20220309-23-bloom-athletes-define-caption-for-node.png](screenshots/20220309-23-bloom-athletes-define-caption-for-node.png)
![screenshots/20220309-24-bloom-athletes-card-view.png](screenshots/20220309-24-bloom-athletes-card-view.png)
![screenshots/20220309-25-bloom-athletes-card-view-selected.png](screenshots/20220309-25-bloom-athletes-card-view-selected.png)

### Bloom: Filter

![screenshots/20220309-26-bloom-filter-graph.png](screenshots/20220309-26-bloom-filter-graph.png)
![screenshots/20220309-27-bloom-filter-define-specific-page-rank-using-histogram.png](screenshots/20220309-27-bloom-filter-define-specific-page-rank-using-histogram.png)
![screenshots/20220309-28-bloom-apply-filter.png](screenshots/20220309-28-bloom-apply-filter.png)
![screenshots/20220309-29-bloom-filter-histogram-revisited.png](screenshots/20220309-29-bloom-filter-histogram-revisited.png)
![screenshots/20220309-30-bloom-multiple-filters.png](screenshots/20220309-30-bloom-multiple-filters.png)
![screenshots/20220309-31-bloom-athletes-and-teams.png](screenshots/20220309-31-bloom-athletes-and-teams.png)
![screenshots/20220309-32-bloom-athletes-teams-and-countries.png](screenshots/20220309-32-bloom-athletes-teams-and-countries.png)
![screenshots/20220309-33-bloom-filters.png](screenshots/20220309-33-bloom-filters.png)
![screenshots/20220309-34-bloom-filters-relationships.png](screenshots/20220309-34-bloom-filters-relationships.png)

### Bloom: Controls

![screenshots/20220309-35-bloom-activate-map.png](screenshots/20220309-35-bloom-activate-map.png)
![screenshots/20220309-36-bloom-minimap.png](screenshots/20220309-36-bloom-minimap.png)
![screenshots/20220309-37-bloom-controls-hidden.png](screenshots/20220309-37-bloom-controls-hidden.png)
![screenshots/20220309-38-bloom-scene-node-count.png](screenshots/20220309-38-bloom-scene-node-count.png)
![screenshots/20220309-39-bloom-scene-relationship-count.png](screenshots/20220309-39-bloom-scene-relationship-count.png)
![screenshots/20220309-40-bloom-scene-export.png](screenshots/20220309-40-bloom-scene-export.png)
![screenshots/20220309-41-bloom-clear-scene.png](screenshots/20220309-41-bloom-clear-scene.png)

### Bloom: Search

![screenshots/20220309-42-bloom-search.png](screenshots/20220309-42-bloom-search.png)
![screenshots/20220309-43-bloom-search-athlete-name.png](screenshots/20220309-43-bloom-search-athlete-name.png)
![screenshots/20220309-44-bloom-search-specific-athlete.png](screenshots/20220309-44-bloom-search-specific-athlete.png)
![screenshots/20220309-45-bloom-search-specific-athlete.png](screenshots/20220309-45-bloom-search-specific-athlete.png)
![screenshots/20220309-46-bloom-expand-all-data.png](screenshots/20220309-46-bloom-expand-all-data.png)
![screenshots/20220309-47-bloom-view-the-team-name.png](screenshots/20220309-47-bloom-view-the-team-name.png)
![screenshots/20220309-48-bloom-example-result.png](screenshots/20220309-48-bloom-example-result.png)
![screenshots/20220309-49-bloom-example-result.png](screenshots/20220309-49-bloom-example-result.png)
![screenshots/20220309-50-bloom-example-result.png](screenshots/20220309-50-bloom-example-result.png)
![screenshots/20220309-51-bloom-example-result.png](screenshots/20220309-51-bloom-example-result.png)
![screenshots/20220309-52-bloom-example-result.png](screenshots/20220309-52-bloom-example-result.png)

### Exercise: Find games for a specific athlete

![screenshots/20220309-53-exercise-find-games-for-athlete.png](screenshots/20220309-53-exercise-find-games-for-athlete.png)
![screenshots/20220309-54-exercise-find-games-for-athlete-result.png](screenshots/20220309-54-exercise-find-games-for-athlete-result.png)

## Building upon patterns

![screenshots/20220309-55-building-upon-patterns.png](screenshots/20220309-55-building-upon-patterns.png)
![screenshots/20220309-56.png](screenshots/20220309-56.png)
![screenshots/20220309-57.png](screenshots/20220309-57.png)

## Search paths between two points of interest

![screenshots/20220309-58-search-paths-between-two-points-of-interest.png](screenshots/20220309-58-search-paths-between-two-points-of-interest.png)
![screenshots/20220309-59.png](screenshots/20220309-59.png)
![screenshots/20220309-60.png](screenshots/20220309-60.png)
![screenshots/20220309-61.png](screenshots/20220309-61.png)

## Finding more than one occurrence

![screenshots/20220309-62-finding-more-than-one-occurrence.png](screenshots/20220309-62-finding-more-than-one-occurrence.png)
![screenshots/20220309-63-cities-who-have-hosted-more-than-one-game.png](screenshots/20220309-63-cities-who-have-hosted-more-than-one-game.png)
![screenshots/20220309-64-athletes-part-of-multiple-teams.png](screenshots/20220309-64-athletes-part-of-multiple-teams.png)

## Accessing properties

![screenshots/20220309-65-accessing-properties.png](screenshots/20220309-65-accessing-properties.png)
![screenshots/20220309-66.png](screenshots/20220309-66.png)
![screenshots/20220309-67.png](screenshots/20220309-67.png)

## Exercises

![screenshots/20220309-68-exercises.png](screenshots/20220309-68-exercises.png)

### Exercise 1

![screenshots/20220309-69-exercise-1-how-many-gold-medals.png](screenshots/20220309-69-exercise-1-how-many-gold-medals.png)

### Exercise 2

![screenshots/20220309-70-exercise-2.png](screenshots/20220309-70-exercise-2.png)

### Exercise 3

![screenshots/20220309-71-exercise-3.png](screenshots/20220309-71-exercise-3.png)
![screenshots/20220309-72.png](screenshots/20220309-72.png)
![screenshots/20220309-73.png](screenshots/20220309-73.png)

### Exercise 4

![screenshots/20220309-74-exercise-4.png](screenshots/20220309-74-exercise-4.png)
![screenshots/20220309-75.png](screenshots/20220309-75.png)
![screenshots/20220309-76.png](screenshots/20220309-76.png)
![screenshots/20220309-77.png](screenshots/20220309-77.png)
![screenshots/20220309-78.png](screenshots/20220309-78.png)

## Interacting with the workspace

![screenshots/20220309-79-interacting-with-the-workspace.png](screenshots/20220309-79-interacting-with-the-workspace.png)

### Exercise 1

![screenshots/20220309-80-exercise-athletes-winning-multiple-gold-medals.png](screenshots/20220309-80-exercise-athletes-winning-multiple-gold-medals.png)
![screenshots/20220309-81.png](screenshots/20220309-81.png)
![screenshots/20220309-82.png](screenshots/20220309-82.png)
![screenshots/20220309-83.png](screenshots/20220309-83.png)
![screenshots/20220309-84-bloom-perspective-look-at-properties-of-medal-node.png](screenshots/20220309-84-bloom-perspective-look-at-properties-of-medal-node.png)

## Search phrases

![screenshots/20220309-85-search-phrases.png](screenshots/20220309-85-search-phrases.png)
![screenshots/20220309-86-reference-example-to-create-a-search-phrase.png](screenshots/20220309-86-reference-example-to-create-a-search-phrase.png)
![screenshots/20220309-87-bloom-define-search-phrase.png](screenshots/20220309-87-bloom-define-search-phrase.png)
![screenshots/20220309-88-bloom-define-search-phrase-parameter-1.png](screenshots/20220309-88-bloom-define-search-phrase-parameter-1.png)
![screenshots/20220309-89-bloom-define-search-phrase-parameter-2.png](screenshots/20220309-89-bloom-define-search-phrase-parameter-2.png)
![screenshots/20220309-90-bloom-use-our-new-search-phrase.png](screenshots/20220309-90-bloom-use-our-new-search-phrase.png)
![screenshots/20220309-91-bloom-search-phrase-autocomplete.png](screenshots/20220309-91-bloom-search-phrase-autocomplete.png)
![screenshots/20220309-92-bloom-search-phrase-find-matching-first-and-last-names.png](screenshots/20220309-92-bloom-search-phrase-find-matching-first-and-last-names.png)

## Editing data in Bloom

![screenshots/20220309-93-editing-data-in-bloom.png](screenshots/20220309-93-editing-data-in-bloom.png)
![screenshots/20220309-94-editing-data.png](screenshots/20220309-94-editing-data.png)
![screenshots/20220309-95-editing-constraints.png](screenshots/20220309-95-editing-constraints.png)

## Manually create a relationship between two nodes

![screenshots/20220309-96-bloom-manually-create-a-relationship-between-two-nodes.png](screenshots/20220309-96-bloom-manually-create-a-relationship-between-two-nodes.png)

## Customizing and applying rule-based styling

![screenshots/20220309-97-customizing-and-applying-rule-based-styling.png](screenshots/20220309-97-customizing-and-applying-rule-based-styling.png)

### Your visualization your way

![screenshots/20220309-98-your-visualization-your-way.png](screenshots/20220309-98-your-visualization-your-way.png)
![screenshots/20220309-99.png](screenshots/20220309-99.png)
![screenshots/20220309-100.png](screenshots/20220309-100.png)
![screenshots/20220309-101.png](screenshots/20220309-101.png)
![screenshots/20220309-102.png](screenshots/20220309-102.png)
![screenshots/20220309-103.png](screenshots/20220309-103.png)
![screenshots/20220309-104.png](screenshots/20220309-104.png)
![screenshots/20220309-105.png](screenshots/20220309-105.png)
![screenshots/20220309-106.png](screenshots/20220309-106.png)
![screenshots/20220309-107.png](screenshots/20220309-107.png)
![screenshots/20220309-108.png](screenshots/20220309-108.png)
![screenshots/20220309-109.png](screenshots/20220309-109.png)
![screenshots/20220309-110.png](screenshots/20220309-110.png)
![screenshots/20220309-111.png](screenshots/20220309-111.png)

#### Finished styling for our visualization

![screenshots/20220309-112-finished-styling-for-our-visualization.png](screenshots/20220309-112-finished-styling-for-our-visualization.png)
![screenshots/20220309-113.png](screenshots/20220309-113.png)

## Continue your journey

![screenshots/20220309-114.png](screenshots/20220309-114.png)
![screenshots/20220309-115.png](screenshots/20220309-115.png)
![screenshots/20220309-116.png](screenshots/20220309-116.png)
