line = gets.chomp.split.map(&:to_i)

a = line[0]
b = line[1]

if b % a == 0
    puts b + a
else
    puts b - a
end
