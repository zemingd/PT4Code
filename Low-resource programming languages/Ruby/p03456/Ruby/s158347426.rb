a, b = gets.split.map(&:to_s)
num = (a + b).to_i

for i in 1 .. Float::INFINITY
  return 'Yes' if i * i == num
  break if i * i > num
end

return 'No'