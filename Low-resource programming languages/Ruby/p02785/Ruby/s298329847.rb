n, k = gets.chomp.split(" ").map(&:to_i);
hs = gets.chomp.split(" ").map(&:to_i);

hs.sort!.reverse!
k.times do
  hs.shift
end

puts hs.sum