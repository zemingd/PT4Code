ACGT_REGEX = /[ACGT]{0,}/.freeze

s = gets.chomp

puts (s.scan(ACGT_REGEX).max || '').length
