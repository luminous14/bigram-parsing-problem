load "bigram_parser.rb"

text = File.open(ARGV[0]).read

BigramParser.new(text).run
