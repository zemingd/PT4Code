times = []
5.times { times << gets.to_i}
b = times.map do |time|
  if time % 10 != 0
    time.ceil(-1) - time
  else
    0
  end
end
max_position = 0
max = 0
5.times do |i|
  if b[i] >= max
    max_position = i
    max = b[i]
  end
end
before_ans = 0
5.times do |i|
  before_ans += times[i] % 10 == 0 ? times[i] : times[i].ceil(-1)
end
ans = before_ans - ( times[max_position].ceil(-1) - times[max_position] )
puts ans
