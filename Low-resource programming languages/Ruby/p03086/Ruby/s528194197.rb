
ACGT_REGEX = /[ACGT]{0,}/.freeze

s = gets.chomp

ans = s.scan(ACGT_REGEX).max
puts ans.nil? ? 0 : ans.length
