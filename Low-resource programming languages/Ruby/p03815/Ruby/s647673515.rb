x = gets.chomp!.to_i
if x % 11 == 0 then
    a = 0
elsif x % 11 <= 6 then
    a = 1
else
    a = 2
end

puts (x / 11 * 2 + a)