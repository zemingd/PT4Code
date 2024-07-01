n, dimension = gets.split.map(&:to_i)

points = n.times.map do |i|
  gets.split.map(&:to_i)
end

res = 0

(0...(n-1)).each do |i|
  ((i + 1)...n).each do |j|
    ddouble = 0
    dimension.times do |d|
      ddouble += (points[i][d] - points[j][d]) ** 2
    end

    res += 1 if (Math.sqrt(ddouble).floor ** 2 == ddouble)
  end
end

puts res