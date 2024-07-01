a, b = gets.split.map(&:to_i)

if a == b
    puts a * 2
elsif a > b
    puts (a * 2) - 1
elsif
    puts (b * 2) - 1
end
