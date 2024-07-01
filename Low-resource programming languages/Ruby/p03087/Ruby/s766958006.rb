n, q = gets.chomp.split.map(&:to_i)
str = gets.chomp[0..n]

counts = [0]
(1...n).each do |idx|
  counts[idx] = counts[idx - 1]
  counts[idx] += 1 if str[idx - 1] == "A" && str[idx] == "C"
end

q.to_i.times do
  l, r = gets.chomp.split.map(&:to_i)
  puts counts[r - 1] - counts[l - 1]
end
