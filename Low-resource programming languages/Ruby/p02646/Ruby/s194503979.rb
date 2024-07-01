a, v = gets.split.map &:to_i
b, w = gets.split.map &:to_i
t = gets.to_i
l = b - a
n = v - w
if v <= w
  puts :NO
  exit
end
if l == v
  puts :YES
  exit
elsif l == w
  for i in 1..t
    if v == i * w
      puts :YES
      exit
    end
  end
  puts :NO
  exit
else
  for i in 1..t
    a += v
    if a == b
      puts :YES
      exit
    end
    b += w
  end
end

puts :NO