n = gets.chomp.to_i
p = gets.chomp.split(" ").map(&:to_i)

count = 0
1.upto(n - 2) do |i|
  array = []
  array.push(p[i - 1], p[i], p[i + 1])
  array.sort!
  count += 1 if array[1] == p[i] && array[2] != p[i]
end

puts count
