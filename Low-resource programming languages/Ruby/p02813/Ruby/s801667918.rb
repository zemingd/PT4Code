def fact(n, a=1)
  return a if n == 0
  fact(n-1, n*a)
end

n = gets.chomp.to_i
x = $stdin.gets.chomp.split(' ').map(&:to_i)
y = $stdin.gets.chomp.split(' ').map(&:to_i)
a, b = 1, 1
x1 = Array.new
y1 = Array.new
x.length.times do |i|
  m = 0
  n = x.pop
  x1.each do |j|
    if n > j
      m = m + 1
    end
  end
  a = a + m * fact(x1.length)
  x1.push(n)
end
  
y.length.times do |i|
  m = 0
  n = y.pop
  y1.each do |j|
    if n > j
      m = m + 1
    end
  end
  b = b + m * fact(y1.length)
  y1.push(n)
end
#p a
#p b
p (a-b).abs