S = gets.chomp
Q = gets.chomp.to_i

Q.times do |i|
    i = gets.chomp.split(" ") 
    if  i == ["1"]
        flag = flag == 0 ? 1 : 0
    else
        if i[1] == "1"
            S.unshift(i[2]) if flag == 0
            S.push(i[2]) if flag == 1
        elsif i[1] == "2"
            S.unshift(i[2]) if flag == 1
            S.push(i[2]) if flag == 0
        end
    end
end

if flag == 0
    puts S
else
    puts S.reverse
end
