N = gets.to_i
a = gets.split.map(&:to_i)

i = 1
a.each do |j|
  i += 1 if j == i
end

puts i == 1 ? -1 : N - i + 1