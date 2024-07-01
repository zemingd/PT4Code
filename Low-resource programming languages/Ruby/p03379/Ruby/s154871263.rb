n = gets.to_i
x = gets.split.map(&:to_i)
y = x.sort{|a, b| a<=>b}
m1 = y[n / 2 - 1]
m2 = y[n / 2]
if m1 == m2
  n.times do
    puts m1
  end
  exit
end
0.upto(n-1) do |i|
  if x[i] <= m1
    puts m2
  else
    puts m1
  end
end