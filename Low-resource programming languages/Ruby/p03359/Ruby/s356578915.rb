b, c = gets.chomp.split(" ").map(&:to_i)
if b <= c
puts b
else
puts b - 1
end