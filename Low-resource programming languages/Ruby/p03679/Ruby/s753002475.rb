x, a, b = gets.chomp.split.map(&:to_i)
if b - a > 0
    result = (b - a > x) ? "dangerous" : "safe"
else
    result = "delicious"
end
puts result