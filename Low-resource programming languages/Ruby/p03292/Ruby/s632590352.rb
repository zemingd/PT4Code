as = gets.chomp.split.map(&:to_i)
ans = 1000000000000000000
(0...3).to_a.permutation(3) do |ps|
  x = (as[ps[1]] - as[ps[0]]).abs + (as[ps[2]] - as[ps[1]]).abs
  ans = [ans, x].min
end
p ans
