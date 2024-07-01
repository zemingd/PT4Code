x = gets.to_i
if x == 1
  puts 1
  exit
end

s = Math.sqrt(x).floor
max = 0

2.upto(s) do |i|
  j = 1
  while x >= i**j
    max = i**j if i**j > max
    j += 1
  end
end
puts max
