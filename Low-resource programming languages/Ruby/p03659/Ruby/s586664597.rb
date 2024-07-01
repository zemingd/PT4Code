n = gets.chomp.to_i
s = gets.chomp
array = s.split(" ").map(&:to_i)

a = b = i = j = 0

while i+j < n
  while a<b && i+j < n
    a += array[n-1-i]
    i += 1
  end
  if i+j==n-1
    if a != 0 && b != 0
      if (a+array[j]-b).abs > (a-(b+array[j])).abs
        b = b+array[j]
      else
        a = a+array[j]
      end
    end
  elsif i+j<n
      b += array[j]
  end
    j += 1
end

puts (a-b).abs