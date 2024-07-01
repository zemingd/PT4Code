n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

def f(n, a) 
  b = []
  
  n.times do |i|
    b = b.push(a[i]).reverse
  end

  puts b.map(&:to_s).join(' ')
end

def g1(n, a)
  b = []
  m = n / 2

  (0...m).each do |i|
    b.unshift(a[2 * i + 1])
    b.push(a[2 * i])
  end
  
  return b
end

def g2(n, a)
  b = []
  m = n / 2

  (0...m).each do |i|
    b.unshift(a[2 * i])
    b.push(a[2 * i + 1])
  end
  
  b.unshift(a[n - 1])
  
  return b
end

if (n % 2) == 0 then
  puts g1(n, a).map(&:to_s).join(' ')
else
  puts g2(n, a).map(&:to_s).join(' ')
end