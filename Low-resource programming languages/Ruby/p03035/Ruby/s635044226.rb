a,b = gets.chomp.split(" ").map(&:to_i)
if a <= 5
  b = 0
elsif a <= 12
  b /= 2
end

print b