# The Bigram Parsing Problem:

## Task 
Create an application that can take as input **any** text file and output a
histogram of the bigrams in the text.

### Description:

A bigram is any two adjacent words in the text disregarding case. A histogram is
the count of how many times that particular bigram occurred in the text.

A well formed submission will be runnable from command line and have
accompanying unit tests for the bigram parsing and counting code. You may do
this in any language you wish and use any framework or data structures you wish
to handle reading the files, building up the output, and running the unit tests.
However the bigram parsing and counting code must be implemented by yourself.

### Example:

Given the text: "The quick brown fox and the quick blue hare." The bigrams with
their counts would be.

* "the quick" 2
* "quick brown" 1
* "brown fox" 1
* "fox and" 1
* "and the" 1
* "quick blue" 1
* "blue hare" 1


## Solution

This guide is designed for beginners who want to get started with a Railsapplication from scratch. It does not assume that you have any prior experience with Rails. However, to get the most out of it, you need to have some prerequisites installed:

The Ruby language version 2.2.2 or newer.
Right version of Development Kit, if you are using Windows.
The RubyGems packaging system, which is installed with Ruby by default. To learn more about RubyGems, please read the RubyGems Guides.
