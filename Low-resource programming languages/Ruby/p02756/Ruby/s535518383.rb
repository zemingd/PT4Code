S = gets.chomp
Q = gets.chomp.to_i
Query = []
Q.times do |i|
    i = gets.chomp.split(" ") 
    if  i == ["1"]
        S[0], S[-1] = S[-1], S[0]
    else
        if i[1] == "1"
            S = i[2] + S
        elsif i[1] == "2"
            S =  S + i[2]
        end
    end

end

puts S