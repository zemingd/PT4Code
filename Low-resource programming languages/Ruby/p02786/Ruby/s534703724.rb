h = gets.chomp.to_i
answer = 0
n = 1
while h > 0
    answer += n
    h /= 2
    n *= 2
end
puts answer