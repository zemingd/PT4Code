n, m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
if n >= m
  puts 0
  exit
elsif n == 1
  puts x.max - x.min
  exit
end
x.sort!{|a, b| a<=>b}
sum = x.max - x.min
y = []
0.upto(m-2) do |i|
  y[i] = x[i + 1] - x[i]
end
y.sort!{|a, b| b<=>a}
0.upto(n-2) do |i|
  sum -= y[i]
end
puts sum