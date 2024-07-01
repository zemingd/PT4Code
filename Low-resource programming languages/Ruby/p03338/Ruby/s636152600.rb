n = gets.to_i
s = gets.chomp

ss = s.chars

maxv=0
(n-1).times do |i|
  num = (ss[0..i] & ss[(i+1)..-1]).size
  maxv = [maxv, num].max
end

p maxv
