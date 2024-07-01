n = gets.to_i
x = gets.chomp.split(" ").map(&:to_i)
y = x.uniq.count

if y == 4
   puts "Four"
else
   puts "Three"
end
