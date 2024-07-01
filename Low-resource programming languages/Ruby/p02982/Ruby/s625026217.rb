n, d = gets.split(" ").map(&:to_i)
array = []
count = 0
n.times do
  array << gets.split(" ").map(&:to_i)
end

(1..n).to_a.combination(2) do |i, j|
  sum = 0
  array[i - 1].zip(array[j - 1]) do |a, b|
    sum += (a - b).abs ** 2
  end
  count += 1 if Math.sqrt(sum) == Math.sqrt(sum).to_i
end

puts count