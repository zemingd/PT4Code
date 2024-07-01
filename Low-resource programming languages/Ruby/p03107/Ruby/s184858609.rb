s = gets.chomp
zero = s.count('0')
one = s.count('1')

if zero > one
    puts (2 * zero)
else
    puts (2 * one)
end