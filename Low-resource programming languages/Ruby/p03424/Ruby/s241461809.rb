_ = gets
s = gets.chomp.split
hs = Hash.new(0)
s.each do |c|
  hs[c] += 1
end
kind = hs.keys.size
if kind == 3
  puts "Three"
elsif kind == 4
  puts "Four"
end