# Gilded-Rose

### About

In solution ```Sulfura``` has been taken out since it is redundant, everything is taken care of in the ```Items``` class.

Whenever person decides to add an item it is done in the ```Inn``` class and then it is itterated over and the quality updates are dealt with in the respective Item's class.

### The Brief

*"Hi and welcome to team Gilded Rose. As you know, we are a small inn with a prime location in a prominent city run by a friendly innkeeper named Allison. We also buy and sell only the finest goods. Unfortunately, our goods are constantly degrading in quality as they approach their sell by date.

We have a system in place that updates our inventory for us. It was developed by a no-nonsense type named Leeroy, who has moved on to new adventures. Your task is to add the new feature to our system so that we can begin selling a new category of items. First an introduction to our system:

* Once the sell by date has passed, Quality degrades twice as fast
* The Quality of an item is never negative
* “Aged Brie” actually increases in Quality the older it gets
* The Quality of an item is never more than 50
* “Sulfuras”, being a legendary item, never has to be sold or decreases in Quality
* “Backstage passes”, like aged brie, increases in Quality as it’s SellIn value approaches; Quality increases by 2 when there are 10 days or less and by 3 when there are 5 days or less but Quality drops to 0 after the concert

We have recently signed a supplier of conjured items. This requires an update to our system:

* “Conjured” items degrade in Quality twice as fast as normal items

Feel free to make any changes to the UpdateQuality method and add any new code as long as everything still works correctly. However, do not alter the Item class or Items property as those belong to the goblin in the corner who will insta-rage and one-shot you as he doesn’t believe in shared code ownership (you can make the UpdateQuality method and Items property static if you like, we’ll cover for you)."*

## Run locally

View the repository [here](https://github.com/makersacademy/course/blob/master/individual_challenges/gilded_rose.md) on GitHub

Clone the repo. Then:

``` bundle install ```

## To run the tests

``` rspec ```

## Processes
* TDD

## Technologies used
* [Ruby](https://www.ruby-lang.org/en/)
* [RSpec](http://rspec.info/)