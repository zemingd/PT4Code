a, b, c = readline.split.map(&:to_i)
if a < c && c < b || a == b && b == c
    puts "Yes"
else
    puts "No"
end