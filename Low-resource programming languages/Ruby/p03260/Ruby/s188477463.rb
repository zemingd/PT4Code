def aa
    a,b = gets.chomp.split(/\s/).map{|x| x.to_i}

    for c in 1..3
        d = a*b*c
        if d%2 == 1
            puts 'Yes'
            exit
        end
    end

    puts 'No'
end

aa