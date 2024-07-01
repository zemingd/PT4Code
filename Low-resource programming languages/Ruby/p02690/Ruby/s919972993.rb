x = gets.to_i
(-118..119).each do |i|
    (-119..119).each do |j|
        y=i**5-j**5
        if x==y
            puts "#{i} #{j}"
            exit
        end
    end
end