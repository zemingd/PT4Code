n,d = gets.split.map(&:to_i)
x = n.times.map{gets.split.map(&:to_i)}
ans = 0

for i in 0...n
  for j in i+1...n
    y = x[i]
    z = x[j]
    sum = 0
    d.times.map{|k|
      sum += (y[k]-z[k])**2
    }
    f = (1..1000).map{|k| sum/k==k && sum%k==0}.any?
    ans += 1 if f
  end
end

p ans