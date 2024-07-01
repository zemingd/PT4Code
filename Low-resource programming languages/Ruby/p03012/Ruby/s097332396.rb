n = gets.to_i
sum,comp = 0,0
w = gets.split.map do |i|
  sum += i.to_i
  i.to_i
end
min = Float::INFINITY
w.each do |i|
  comp += i
  ans = (comp - (sum - comp).abs).abs
  if min > ans
    min = ans
  else
    puts min
    exit
  end
end
