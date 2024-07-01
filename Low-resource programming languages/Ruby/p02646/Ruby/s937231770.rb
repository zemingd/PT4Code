a,v = gets.chomp.split(" ").map(&:to_i)
b,w = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.to_i

if v <= w
  puts "NO"
  exit 0
end

diff = (b - a).abs
t.times do |i|
  if a < b
    a += v
    b += w
  else
    a -= v
    b -= w
  end
  if a == b
    puts "YES"
    exit 0
  else diff >= (b - a).abs
    puts "NO"
    exit 0
  else
    diff = (b - a).abs
  end
end

puts "NO"
