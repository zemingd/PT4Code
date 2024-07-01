n = gets.chomp.to_i
s = gets.chomp.split('')
max = 0
0.upto(n-2) do |i|
  a = s[0..i].uniq
  b = s[i+1..-1].uniq
  num = (a & b).size
  max = num if num > max
end
puts max
