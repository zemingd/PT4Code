input = gets.chomp.to_i
hina = gets.chomp.split.map(&:to_s)
sum = hina.uniq

#p input,hina,sum

if sum.count == 3
    puts "Three"
else
    puts "Four"
end