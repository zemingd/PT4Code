n = gets.to_i
difficulties = gets.split.map(&:to_i).sort
puts difficulties[n / 2] - difficulties[n / 2 - 1]
