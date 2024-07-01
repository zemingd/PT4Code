x = gets.to_i

case x % 11
when 0
    puts x / 11 * 2
when 1..6
    puts x / 11 * 2 + 1
else
    puts x/ 11 * 2 + 2
end