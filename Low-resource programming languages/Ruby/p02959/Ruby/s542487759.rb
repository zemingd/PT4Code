n = gets.chop.to_i

a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)

asum = a.inject(:+)
n.times do |i|
  if a[i] > b[i]
    a[i] = a[i] - b[i]
  else
    b[i] = b[i] - a[i]
    a[i] = 0
    if a[i+1] > b[i]
      a[i+1] = a[i+1] - b[i]
    else
      a[i+1] = 0
    end
  end
end

asumresult = a.inject(:+)

if asum > asumresult
  puts asum - asumresult
else
  puts asumresult.inject(:+)
end
