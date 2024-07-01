n = gets.chomp.to_i
s = gets.chomp
array = s.split(" ").map(&:to_i)

plus = minus = []

a = b = i = j = 0
while i+j < n
  while a<b && i+j < n
    a += array[array.length-1-i]
    i += 1
  end
  if i+j != n
    b += array[j]
  end
  j += 1
end


puts (a-b).abs

