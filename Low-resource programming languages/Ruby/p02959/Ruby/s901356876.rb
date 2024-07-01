n=gets.to_i
as=gets.split.map(&:to_i)
bs=gets.split.map(&:to_i)

ans=0
n.times do |i|
  power=bs[i]
  if power>as[i]
    ans+=as[i]
    power-=as[i]
    if power>=as[i+1]
      ans+=as[i+1]
      as[i+1]=0
    else
      ans+=power
      as[i+1]-=power
    end
  else
    ans+=power
  end
end
puts ans
