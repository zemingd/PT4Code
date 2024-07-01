require 'strscan'

ALL_WORDS_REGEXP = /\A(dream|dreamer|erase|eraser)/
SHORT_WORDS_REGEXP = /^(dream|erase)/
LONG_WORDS_REGEXP = /^(dreamer|eraser)/

scanner = StringScanner.new(ARGF.gets.chomp)
str = scanner.string

while true
  if scanner.scan(SHORT_WORDS_REGEXP)
    break if scanner.eos?
    point = scanner.pointer
    if not str.index("dream", point) == point and not str.index("erase", point) == point
      scanner.unscan
      scanner.scan(LONG_WORDS_REGEXP)
      break if scanner.eos?
    end
  else
    puts "NO"
    exit
  end
end

puts "YES"