x = gets.to_i                                                                   

def count(x, times)
  [6, 5].each do |i|
    x -= i
    times += 1
    break if x < 0
  end
  return times
end

times = 0
if x <= 11
  times = count(x, times)
else
  values = x.divmod(11)
  times = values[0] * 2
  times = count(values[1], times)
end
p times