require "minitest/autorun"
require "minitest/spec"
require "pry"
require_relative "test_helper.rb"
require_relative "../bigram_parser.rb"

class BigramParserTest < Minitest::Test
  describe "#sanitized_words" do
    it "removes all non word characters except white space" do
      text = "!@#apples{$%^&*()} and []-=_+1234oranges567890,./<>?~`\\|Ⓒ\n\t"
      bigram_parser = BigramParser.new(text)
      assert_equal bigram_parser.sanitzed_words, "apples and oranges"
    end

    it "downcases all letters" do
      text = "LoWERCAse LeTTErS"
      bigram_parser = BigramParser.new(text)
      assert_equal bigram_parser.sanitzed_words, "lowercase letters"
    end

    it "removes extra whitespace" do
      text = "  extra    whitespaces     removed  "
      bigram_parser = BigramParser.new(text)
      assert_equal bigram_parser.sanitzed_words, "extra whitespaces removed"
    end
  end

  describe "#word_list" do
    it "returns an array of words" do
      text = "apple orange kiwi"
      bigram_parser = BigramParser.new(text)
      assert_equal bigram_parser.word_list, ["apple", "orange", "kiwi"]
    end
  end

  describe "#populate_historgram" do
    it "populates the histogram with bigrams" do
      text = "The quick brown fox and the quick blue hare."
      bigram_parser = BigramParser.new(text)
      assert_equal bigram_parser.histogram, {}
      bigram_parser.populate_histogram

      expected_histogram = {
        "the quick" => 2,
        "quick brown" => 1,
        "brown fox" => 1,
        "fox and" => 1,
        "and the" => 1,
        "quick blue" => 1,
        "blue hare" => 1,
      }

      assert_equal bigram_parser.histogram, expected_histogram
    end
  end

  describe "#print_histogram" do
    it "prints a formatted histogram " do
      text = "The quick brown fox and the quick blue hare."
      bigram_parser = BigramParser.new(text)
      bigram_parser.populate_histogram
      expected_stdout = <<-HEREDOC
* "the quick" 2
* "quick brown" 1
* "brown fox" 1
* "fox and" 1
* "and the" 1
* "quick blue" 1
* "blue hare" 1
      HEREDOC

      stdout = captured_stdout { bigram_parser.print_histogram }

      assert_equal stdout, expected_stdout
    end
  end

  describe "#run" do
    it "prints histogram to stdout" do
      text = "The quick brown fox and the quick blue hare."
      bigram_parser = BigramParser.new(text)
      expected_stdout = <<-HEREDOC
* "the quick" 2
* "quick brown" 1
* "brown fox" 1
* "fox and" 1
* "and the" 1
* "quick blue" 1
* "blue hare" 1
      HEREDOC

      stdout = captured_stdout { bigram_parser.run }

      assert_equal stdout, expected_stdout
    end
  end
end
