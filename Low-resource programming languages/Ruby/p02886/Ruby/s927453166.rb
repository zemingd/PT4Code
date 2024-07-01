n=gets.to_i
ans=0
a=gets.split.map(&:to_i)
(0...n-1).each do |i|
  (i+1...n).each do |j|
    ans+=a[i]*a[j]
  end
end
p ans