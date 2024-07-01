a, b, c = gets.chomp.split().map{|x| x.to_i}

count = b / a

if count > c
    puts c
else
    puts count
end