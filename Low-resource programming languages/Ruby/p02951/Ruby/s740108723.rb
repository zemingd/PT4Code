str = gets.split
A,B,C = str[0].to_i, str[1].to_i, str[2].to_i

answer = C-(A-B)
if answer < 0
    answer = 0
end

puts answer