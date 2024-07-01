N, K = gets.split.map(&:to_i)
s = gets.chomp.chars
s[K - 1] = s[K - 1].downcase
puts s.join('')
