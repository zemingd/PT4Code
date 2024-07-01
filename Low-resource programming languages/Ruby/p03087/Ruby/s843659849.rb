n, q = gets.split.map &:to_i
prev = nil
sum = 0
sums = gets.chomp.each_char.map { |c|
  sum += 1 if prev == 'A' and c == 'C'
  prev = c
  sum
}

q.times do
  a, b = gets.split.map &:to_i
  count = sums[b-1] - sums[a-1]
  #count -= 1 if sums[a-2] < sums[a-1]
  p count
end