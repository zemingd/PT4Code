N = gets.chomp.to_i
numbers = gets.chomp.split(" ").map(&:to_i)

counts = 0
for i in 0...N do
  loop do
    break if numbers[i] % 2 != 0
    numbers[i] /= 2
    counts += 1
  end
end

print("#{counts}\n")