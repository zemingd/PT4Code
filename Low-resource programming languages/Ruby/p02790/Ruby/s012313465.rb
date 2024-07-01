a, b = gets.split.map(&:to_i)

ab = a.to_s * b
ba = b.to_s * a

if ab.to_s < ba.to_s
  puts ab
else
  puts ba
end