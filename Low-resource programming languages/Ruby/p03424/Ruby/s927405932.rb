n = gets.to_i
x = gets.chomp.split
y = x.uniq.count

if y == 4 then
   puts "Four"
else
   puts "Three"
end
