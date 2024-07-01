ACGT_REGEX = /[ACGT]{1,}/.freeze

s = gets.chomp

puts (s.scan(ACGT_REGEX).max(&:size) || '').lengt