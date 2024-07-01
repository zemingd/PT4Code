X = gets.to_i

x = 100
(1 ..).each do |y|
  x = x*101/100
  if x >= X
    puts y
    break
  end
end