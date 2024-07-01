n = gets.to_i
k = gets.chomp.split.sort.uniq.count
if k == 3
    puts "Three"
else
    puts "Four"
end
