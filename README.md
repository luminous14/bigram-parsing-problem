# The Bigram Parsing Problem

## Task 
Create an application that can take as input **any** text file and output a
histogram of the bigrams in the text.

### Description
A bigram is any two adjacent words in the text disregarding case. A histogram is
the count of how many times that particular bigram occurred in the text.

A well formed submission will be runnable from command line and have
accompanying unit tests for the bigram parsing and counting code. You may do
this in any language you wish and use any framework or data structures you wish
to handle reading the files, building up the output, and running the unit tests.
However the bigram parsing and counting code must be implemented by yourself.

### Example
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
I solved this using ruby version 2.2.1p85 and [minitest](https://github.com/seattlerb/minitest).

### Setup
Requirements for running the test include having [Ruby](https://www.ruby-lang.org/en/downloads/) installed and The [RubyGems](https://rubygems.org/)
packaging system, which is installed with Ruby by default. To learn more about
RubyGems, please read the [RubyGems Guides](http://guides.rubygems.org/).

After installing Ruby:
~~~~
clone https://github.com/luminous14/bigram-parsing-problem.git
cd bigram-parsing-problem
gem install bundler
bundle install
~~~~

Please reach out if you are having problems getting set up.

### Running the Parser
`ruby runner.rb  "path/to/your/file.txt"`
### Running the Tests
`ruby test/bigram_parser_test.rb`
