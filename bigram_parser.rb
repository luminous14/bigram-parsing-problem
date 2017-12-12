class BigramParser
  attr_reader :text
  attr_accessor :histogram

  def initialize(text)
    @text = text
    @histogram = Hash.new(0)
  end

  def run
    populate_histogram
    print_histogram
  end

  def populate_histogram
    word_list.each_cons(2) do |words|
      bigram = words.join(" ")
      histogram[bigram] = histogram[bigram] + 1
    end
  end

  def word_list
    sanitzed_words.split
  end

  def sanitzed_words
    text.downcase.gsub(/[\W\d_]+/, " ").gsub(/\s+/, " ").strip
  end

  def print_histogram
    histogram.each do |bigram, count|
      puts "* \"#{bigram}\" #{count}"
    end
  end
end
