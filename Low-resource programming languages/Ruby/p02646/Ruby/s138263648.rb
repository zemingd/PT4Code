a,v = gets.chomp.split(" ").map(&:to_i)
b,w = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.to_i

if v <= w
  puts "NO"
  exit 0
end

diff = (b - a).abs
t.times do |i|
  tmp_diff = (diff - (v - w)).abs
  if tmp_diff == 0
    puts "YES"
    exit 0
  elsif tmp_diff == diff
    puts "NO"
    exit 0
  else
    diff = tmp_diff
  end
end

puts "NO"
