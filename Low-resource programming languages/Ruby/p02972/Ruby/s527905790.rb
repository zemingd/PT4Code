def ball_sum(balls, index)
  sum = 0
  m = 2
  while balls.size >= (index+1)*m
    sum += balls[(index+1)*m-1]
    m += 1
  end
  sum % 2
end
def a
  n = gets.to_i
  as = gets.split.map(&:to_i)

  result = []
  balls = Array.new(n, 0)
  (0..n-1).to_a.reverse.each do |i|
    res = ball_sum(balls, i)
    if res != as[i]
      result << (i+1)
      balls[i] = 1
      # balls[i] = (balls[i] + 1) % 2
    end
  end
  p result.size
  puts result.reverse.map(&:to_s).join(' ')
end

p -1 if a

