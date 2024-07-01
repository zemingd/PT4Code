n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
sum = 0
n.times{|t|
  if a[t]>=b[t] then
    sum += b[t]
  else
    amari = b[t] - a[t]
    sum += a[t]
    if amari >= a[t+1] then
      sum += a[t+1]
      a[t+1] = 0
    else
      a[t+1] -= amari
      sum += amari
    end
  end
}
print sum   