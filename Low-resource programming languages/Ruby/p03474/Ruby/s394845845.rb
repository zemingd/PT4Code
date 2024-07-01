a, b = gets.chomp.split.map(&:to_i)
s = gets.chomp
if (s.length == a + b + 1) && (s.count("-") == 1) && (s[a] == "-")
    puts "Yes"
else
    puts "No"
end