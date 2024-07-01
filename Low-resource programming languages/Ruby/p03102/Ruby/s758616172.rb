N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

An = N.times.map do
  gets.split.map(&:to_i)
end

count = 0
An.each do |an|
  sum = C
  an.each_with_index do |a, i|
    sum += a * B[i]
  end

  if sum > 0
    count += 1
  end
end

puts count
