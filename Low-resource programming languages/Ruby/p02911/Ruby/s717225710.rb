n, k, q = gets.split.map &:to_i
a = Hash.new(0)
q.times do
  a[gets.to_i] += 1
end

(1..n).each do |i|
  puts q - a[i] < k ? :Yes: :No
end