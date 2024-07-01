N, D = gets.split.map(&:to_i)
positions = N.times.map { gets.split.map(&:to_i) }

counter = 0
N.times do |i|
  ((i + 1)..(N - 1)).each do |j|
    sum = 0
    D.times do |index|
      sum += (positions[i][index] - positions[j][index]) ** 2
    end
    counter += 1 if (sum ** (1/2.0)).to_i ** 2 == sum
  end
end
puts counter