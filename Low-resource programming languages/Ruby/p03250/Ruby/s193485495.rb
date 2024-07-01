    a,b,c = gets.chomp.split(/\s/).map{|x| x.to_i}.sort.reverse
    puts a*10+b+c
