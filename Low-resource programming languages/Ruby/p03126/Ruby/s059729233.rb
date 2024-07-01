n,m=gets.split.map(&:to_i)
a=Array.new(m){[false]*n}
n.times do |j|
  _,*l=gets.split.map(&:to_i)
  l.each do |i|
    a[i-1][j]=true
  end
end
ans = m
a.each do |aa|
  aa.each do |bool|
    unless bool
      ans-=1
      break
    end
  end
end
p ans
