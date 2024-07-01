ACGT_REGEX = /[ACGT]{1,}/.freeze

s = gets.chomp

ans = s.scan(ACGT_REGEX).max
puts ans.nil? ? 0 : ans.length
