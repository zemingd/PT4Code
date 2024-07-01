n = gets.to_i
a = gets.split(' ').map(&:to_i)
raise unless a.length == n

count = a.map{ |x|
  m = 0
  while x % 2 == 0
    x /= 2
    m += 1
  end
  m
}.inject(:+)
puts count
    