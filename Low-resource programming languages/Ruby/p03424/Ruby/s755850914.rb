n = gets.chomp.to_i
s = gets.chomp.split(" ").map { |e| e.to_i }.uniq

if s.length == 3
  puts "Three"
else
  puts "Four"
end
