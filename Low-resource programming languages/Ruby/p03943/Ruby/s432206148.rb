a, b, c = gets.split.map(&:to_i)

if (a == b+c) or (b == c+a) or (c == b+a)
    puts "Yes"
else
    puts "No"
end