n = gets.to_i
x = gets.split.map(&:to_i).sort
avg = ((x.inject(&:+)).to_f / n).round
puts x.map { |y| (y - avg)**2 }.inject(&:+)