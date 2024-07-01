N = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

before_sum = 0; a.each{|i| before_sum += i }

if a[0] > b[0]
  a[0] = a[0] - b[0]
  b[0] = 0
else
  b[0] = b[0] - a[0]
  a[0] = 0
end

1.upto(N) do | i |
  # b[i-1]
  if a[i] > b[i-1]
    a[i]   = a[i] - b[i-1]
    b[i-1] = 0
  else
    b[i-1] = b[i-1] - a[i]
    a[i]   = 0
  end

  # b[i]
  next if i == N
  if a[i] > b[i]
    a[i] = a[i] - b[i]
    b[i] = 0
  else
    b[i] = b[i] - a[i]
    a[i] = 0
  end
end

after_sum = 0; a.each{|i| after_sum += i }

p before_sum - after_sum