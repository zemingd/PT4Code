
n = gets.to_i
n = n % 10

case n
when 2,4,5,7,9
    puts "hon"
when 0,1,6,8
    puts "pon"
when 3
    puts "bon"
end