a,b = gets.chomp.split.map(&:to_i)

if b % a == 0 then
    puts a + b
else
    puts b - a
end
