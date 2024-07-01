n,m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i).sort
y = Array.new(m-1)
if m <= n
    puts 0
    exit
end
for i in 0..m-2
    y[i] = x[i+1]-x[i]
end
y.sort!
ans = y[0..m-n-1].inject(:+)
puts ans