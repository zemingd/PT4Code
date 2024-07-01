n,x = gets.strip.split.map(&:to_i)
as = gets.strip.split.map(&:to_i).sort
cnt = 0
n.times do |i|
  if x - as[i] >= 0 
    x -= as[i] 
    cnt += 1
  else
    break
  end
end
puts cnt