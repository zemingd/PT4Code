n, m = gets.chomp.split(' ').map(&:to_i)

a = []
m.times do
  a << gets.chomp.to_i
end

fib = [1, 1, 2]
for i in 3..10000
  fib << fib[i-2] + fib [i-1]
end

a.push(n+1)

ds = []
ds << a[0] + 1
for n in 1..(a.count-1)
  ds << a[n] - a[n-1] 
end

if ds.include?(0) || ds.include?(1)
  puts 0
else
  sum = 1
  ds.each do |d|
    sum *= fib[d - 2]
  end
  puts sum % 1000000007
end