a, b = gets.split(" ")

ab = a * b.to_i
ba = b * a.to_i

if ab > ba
  puts ba
else
  puts ab
end
