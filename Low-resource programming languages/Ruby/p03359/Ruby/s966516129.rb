n = gets.chomp.split(" ").map(&:to_i)
a = n[0]
b = n[1]

if a <= b
    puts a
elsif a > b
    puts a - 1
end
