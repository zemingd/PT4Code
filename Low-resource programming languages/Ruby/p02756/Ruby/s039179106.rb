S = gets.chomp
Q = gets.chomp.to_i
Query = []
Q.times do |i|
    Query[i] = gets.chomp.split(" ") 
end

Query.each do |i|
    if  i == "1"
        tmp1 = S[0]
        tmp2 = S[-1]
        S.slice!(0)
        S.slice!(-1)
        S = tmp2 + S + tmp1
    else
        if i[1] == "1"
            S = i[2] + S
        elsif i[1] == "2"
            S =  S + i[2]
        end
    end
end

puts S
