str = gets.split
H,A = str[0].to_i, str[1].to_i
answer = H/A
if H%A != 0
    answer += 1
end
puts answer