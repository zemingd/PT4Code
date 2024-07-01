N = gets.to_i
D = gets.to_s.split.map(&:to_i)
sum = 0
count = 0

D.each.with_index(1) do |d, i|
  count = i
  (N-i).times do
    sum += d * D[count]
    count += 1
  end
end

puts sum