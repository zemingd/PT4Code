count = 0
n = gets.chomp!.to_i
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

n.times do |i|
  power = bs[i]
  if power >= as[i]
    count += as[i]
    power -= as[i]
    if power >= as[i+1]
      count+=as[i+1]
      as[i+1]=0
    else
      count+=power
      as[i+1]-=power
    end
  else
    count += power
  end
end
  p count