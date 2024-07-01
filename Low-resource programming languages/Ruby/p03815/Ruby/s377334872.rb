x = gets.to_i                                                                   
times = 0
if x <= 11
  [6, 5].each do |i|
    x -= i
    times += 1
    break if x < 0
  end
else
  times = (x / 11) * 2 + 1
end
p times