n = gets.to_i
if n / 10 ==9 then
    puts 'Yes'
    exit
end
n %= 10
if n == 9 then
    puts 'Yes'
    exit
end
puts 'No'