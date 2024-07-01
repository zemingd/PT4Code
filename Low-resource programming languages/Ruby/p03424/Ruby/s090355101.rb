_ = gets.to_i
arare = gets.chomp.split
case arare.uniq.size
when 3 then puts "Three"
when 4 then puts "Four"
end
