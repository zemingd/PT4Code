n, m, c = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
count = 0

n.times do
  ip = 0
  array = gets.split.map(&:to_i)
  array.length.times do |i|
    ip += array[i] * bs[i]
  end

  if ip + c > 0
    count += 1
  end
end

puts count