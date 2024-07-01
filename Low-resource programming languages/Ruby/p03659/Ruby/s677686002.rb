n = gets.chomp.to_i
s = gets.chomp
array = s.split(" ").map(&:to_i)
 
ans = 10**15
 
a = array.inject(:+)
b = 0
for i in 0..(n-1)
  a -= array[i]
  b += array[i]
  if (a-b).abs<ans && b != 0
    ans = (a-b).abs
  end
end
 
puts ans
