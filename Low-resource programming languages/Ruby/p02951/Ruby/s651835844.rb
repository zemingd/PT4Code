A,B,C = gets.split.map(&:to_i)
sum = B+C
result = sum - A
if result > 0
    puts result
else
    puts 0
end