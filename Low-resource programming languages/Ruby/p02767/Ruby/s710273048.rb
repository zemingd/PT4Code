n = gets.to_i
X = gets.chomp.split(' ').map(&:to_i).sort
powers = []

(X[0]..X[-1]).each do |point|
  power = 0
  X.each do |x|
    power += ((point-x)**2).abs
  end
  powers << power
end
puts powers.min