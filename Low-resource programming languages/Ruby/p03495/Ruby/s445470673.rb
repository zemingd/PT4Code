N, K = gets.chomp.split(" ").map(&:to_i)
An = gets.chomp.split(" ").map(&:to_i)

balls = Array.new(An.max, 0)

N.times do |i|
  balls[An[i] - 1] += 1
end

balls.sort!.reverse!

ans = 0
until balls.length <= K do
  ans += balls.pop
end

p ans