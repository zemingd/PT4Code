num = gets.chomp.split(" ").map{|x| x.to_i}
if num[0] == 0 && num[1] == 100 
    puts 101
else
    puts (100 ** num[0]) * num[1]
end