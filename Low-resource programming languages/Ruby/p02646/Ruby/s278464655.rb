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
  diff2 = (b - a).abs
  if diff2 == 0
    puts "YES"
    exit 0
  elsif diff <= diff2
    puts "NO"
    exit 0
  else
    diff = diff2
  end
end

puts "NO"
