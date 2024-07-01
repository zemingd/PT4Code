number = gets.chomp.split(" ")

(number.length).times do |i|
    number[i] = number[i].to_i
end

number = number.sort
ans = 0

(number.length-1).times do |i|

    ans += number[i+1] - number[i]

end

puts ans
