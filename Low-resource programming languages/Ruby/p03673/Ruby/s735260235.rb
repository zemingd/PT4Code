n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

if n == 1
  puts a.first
  exit
end

ind = []
init_n = n

while true
  ind.push(n)
  break if n <= 2
  n -= 2
end

if n == 1
  n = 2
elsif n == 2
  n = 1
end

while true
  ind.push(n)
  break if init_n - 2 <= n
  n += 2
end

b = []

ind.each do |i|
  b.push(a[i-1])
end

puts b.join(' ')
