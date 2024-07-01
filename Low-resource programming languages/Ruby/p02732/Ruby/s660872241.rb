n = gets.to_i
balls = gets.split.map &:to_i

balls_as = [0] * (n + 1)
balls.each do |a|
  balls_as[a] += 1
end

nC2 = balls_as.inject(0) { |sum, m| sum + m * (m-1) / 2 }

balls.each do |a|
  m = balls_as[a]
  # diff = mC2 - (m-1)C2
  diff = m-1
  
  puts nC2 - diff
end


