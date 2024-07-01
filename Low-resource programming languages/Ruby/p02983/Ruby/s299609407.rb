L,R=gets.chomp.split(" ").map(&:to_i)

 if R-L >= 2019
    puts 0
    exit
 end

 ret = 2018
 (L..(R-1)).each do |i|
    ((i+1)..R).each do |j|
        ret = [ret,(i*j)%2019].min
    end 
 end
 puts ret
 