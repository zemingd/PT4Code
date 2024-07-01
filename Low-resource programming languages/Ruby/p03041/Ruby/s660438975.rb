n, k = gets.split.map &:to_i
s = gets.chomp
puts s[0, k-1] + s[k-1].downcase + s[k..-1]