n = gets.chomp.to_i
s = gets.chomp
array = s.split(" ").map(&:to_i)

ans = 10**12

a = array.inject(:+)
i = b = 0
while i <= (n/2)
  if (a-b).abs<ans && b != 0 
    ans = (a-b).abs
  end
  a -= array[i]
  b += array[i]
  i+=1
end

puts (a-b).abs
