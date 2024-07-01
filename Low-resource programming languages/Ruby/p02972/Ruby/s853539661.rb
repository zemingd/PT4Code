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
  (0..n-1).to_a.reverse.each do |i|
    s = ball_sum(as, i)
    if s != as[i]
      result << (i+1)
    end
  end
  p result.size
  puts result.reverse.map(&:to_s).join(' ')
end

p -1 if a

