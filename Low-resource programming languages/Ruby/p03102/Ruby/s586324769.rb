N, M, C = gets.split(' ').map(&:to_i)
B = gets.split(' ').map(&:to_i)
count = 0

N.times do
  sum = 0
  a = gets.split(' ').map(&:to_i)

  M.times do |i|
    sum += a[i] * B[i]
  end

  count += 1 if sum + C > 0
end

puts count