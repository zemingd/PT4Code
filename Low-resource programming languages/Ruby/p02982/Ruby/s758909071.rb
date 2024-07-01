def calc(x,y)
  d = 0.0
  x.length.times do |i|
    d += (x[i]-y[i])**2
  end
  return (d**0.5).to_i**2 == d
end

n,d = gets.split.map(&:to_i)
x = []
n.times do 
  x << gets.split.map(&:to_i)
end

ans = 0
n.times do |i|
  (i+1).upto(n-1) do |j|
    ans += 1 if calc(x[i],x[j])
  end
end
p ans