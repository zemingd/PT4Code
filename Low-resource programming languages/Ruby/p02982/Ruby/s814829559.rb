n, d = gets.split.map(&:to_i)
array = []
n.times do
  array << gets.split.map(&:to_i)
end

count = 0

n.times do |i|
  n.times do |j|
    if i == j
      next
    end

    square = 0
    d.times do |k|
      square += (array[i][k] - array[j][k]) ** 2
    end
    route = square ** (0.5)
    if route.to_i == route
      count += 1
    end
  end
end

 p count / 2