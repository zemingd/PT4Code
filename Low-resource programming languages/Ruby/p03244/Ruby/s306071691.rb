N = gets.to_i
V = gets.split.map(&:to_i)

f02 = Hash.new(0)
f13 = Hash.new(0)
f02[-1] = 1
f13[-2] = 1
for i in 0...(N / 2)
  f02[V[i * 2    ]] += 1
  f13[V[i * 2 + 1]] += 1
end

n = N + 2
x = f02.to_a.max_by{|a| a[1]}
y = f13.to_a.max_by{|a| a[1]}
f13[x[0]] = 0
f02[y[0]] = 0

if x[1] > y[1]
  puts n - x[1] - f13.values.max - 2
elsif x[1] < y[1]
  puts n - f02.values.max - y[1] - 2
else  
  puts n - x[1] - [f13.values.max, f02.values.max].max - 2
end
  