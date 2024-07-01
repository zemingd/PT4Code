n, d = gets.split.map(&:to_i)
points = []
n.times do
  points << gets.split.map(&:to_i)
end

count = 0
points.each_with_index do |y, i|
  points.each_with_index do |z, j|
    next if i >= j
    temp = 0
    d.times do |k|
      temp += (y[k] - z[k])**2
    end
    distance = temp ** (1/2.to_f)
    count += 1 if distance.to_i ** 2 == temp
  end
end
puts count
