n = gets.to_i
s = gets.chomp.chars
puts (n-1).times.map{|i|
  (s[0..i] & s[i+1..n]).count
  }.max