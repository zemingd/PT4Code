a,v = gets.chomp.split(" ").map(&:to_i)
b,w = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.to_i

if v <= w
  puts "NO"
  exit 0
end

if (b - a).abs % (v - w).abs == 0
  k = (b - a).abs / (v - w).abs
  if k <= t
    puts "YES"
    exit 0
  end
end
puts "NO"
