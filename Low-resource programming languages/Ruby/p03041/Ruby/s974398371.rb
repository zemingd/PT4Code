n, k = gets.split(' ').map(&:to_i)
s = gets.split('')

s[k-1].downcase!

puts s.join
