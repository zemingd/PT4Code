n = gets.to_i
s = gets.chomp.chars
res = 0
(n-1).times do |i|
  val = (s[0..i] & s[i+1..n]).count
  res = [res, val].max
end
puts res