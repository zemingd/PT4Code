line = gets.chomp.split(" ").map { |num| num = num.to_i }
k = gets.to_i

max = line.max
total = 0

# p line
# p max

line.each { |num|
  if num == max
    total += num * (2 ** k)
    max = 0
  else
    total += num
  end
}

puts total