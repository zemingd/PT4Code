ary = [
  [[0] * 10, [0] * 10, [0] * 10],
  [[0] * 10, [0] * 10, [0] * 10],
  [[0] * 10, [0] * 10, [0] * 10],
  [[0] * 10, [0] * 10, [0] * 10]
]

n = gets.to_i
(1..n).each do
  b, f, r, v = gets.split.map(&:to_i)
  ary[b - 1][f - 1][r - 1] += v
end
ary.each_with_index do |b, idx|
  b.each do |f|
    puts f.join(' ')
  end
  puts '#' * 20 if idx != 3
end