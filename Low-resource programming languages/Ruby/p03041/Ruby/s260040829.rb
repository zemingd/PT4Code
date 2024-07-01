n,k = gets.chomp.split(' ').map(&:to_i)
s = gets.chomp
s[k] = s[k].downcase
puts s