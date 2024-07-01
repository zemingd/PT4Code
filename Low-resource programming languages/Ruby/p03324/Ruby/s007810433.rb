a, b = gets.chomp.split(" ").map(&:to_i)
if b == 100
  b += 1
end
print(100 ** a * b)