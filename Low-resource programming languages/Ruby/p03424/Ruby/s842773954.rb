n = gets.to_i
s = gets.chomp.split
a = s.uniq.count

if a == 3
    puts "Three"
else
    puts "Four"
end
