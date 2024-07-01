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
ans = y.inject(:+)
ans -= y[-n+1..-1].inject(:+)
puts ans