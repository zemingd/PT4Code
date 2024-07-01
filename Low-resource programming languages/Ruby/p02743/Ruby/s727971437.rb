a, b, c = gets.split.map(&:to_i)

x = c - a - b
if x <= 0
    puts "No"
else
    puts 4 * a * b < x ** 2 ? "Yes" : "No"
end