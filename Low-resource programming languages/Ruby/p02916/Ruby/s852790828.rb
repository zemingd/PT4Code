num = gets.to_i
array_a = gets.split(" ").map(&:to_i)
array_b = gets.split(" ").map(&:to_i)
array_c = gets.split(" ").map(&:to_i)
result = 0

array_b.each do |b|
  result += b
end

(0...array_a.length).each do |i|
  if (array_a[i] + 1) == array_a[i + 1]
    result += array_c[array_a[i] - 1]
  end
end

puts result