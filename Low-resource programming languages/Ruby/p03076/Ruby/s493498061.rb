def five_dishes(times)
  sum = 0
  min = 10
  times.each do |t|
    n = t % 10
    if n == 0
      sum += t
    else
      min = [min, n].min
      sum += t - n + 10
    end
  end

  if min != 0
    sum -= 10 - min
  end
  sum
end

times = []
5.times{ times << gets.to_i }
puts five_dishes(times)