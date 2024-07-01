s = gets.chomp

ACGT_REGEX = /[ACGT]{1,}/.freeze
puts s.scan(ACGT_REGEX).max.length
