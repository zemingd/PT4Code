S = gets.chomp
Q = gets.chomp.to_i

flag = 0

Q.times do |i|
    i = gets.chomp.split(" ") 
    if  i == ["1"]
        flag == 0 ? 1 : 0
    else
        if i[1] == "1"
            S = i[2] + S if flag == 0
            S = S + i[2] if flag == 1
        elsif i[1] == "2"
            S = i[2] + S if flag == 1
            S = S + i[2] if flag == 0
        end
    end
end

if flag == 0
    puts S
else
    puts S.reverse
end

