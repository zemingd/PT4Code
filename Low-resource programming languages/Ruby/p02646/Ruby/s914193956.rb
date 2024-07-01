a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

if v <= w
  puts "NO"
else
  t.times{
  a += v
  b += w
  if b <= a
    puts "YES"
    break
  end
  }
  puts "NO"
end