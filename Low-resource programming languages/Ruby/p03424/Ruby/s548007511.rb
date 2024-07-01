n = gets.chomp.to_i
s = gets.chomp.split(" ").map { |e| e.to_s }.uniq

if s.length == 3
  puts "Three"
else
  puts "Four"
end
