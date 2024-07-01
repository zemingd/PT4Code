n = gets.chomp.split(" ").map(&:to_i)
a = n[0]
b = n[1]

if a <= b
    puts a
else
    puts b
end
