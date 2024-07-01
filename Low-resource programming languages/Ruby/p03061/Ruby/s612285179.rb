class Array
  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

n = gets.to_i
a = gets.chomp.split.map(&:to_i)
a.freeze

array = []
now_b = 0
n.times do |i|
  b = a.dup
  x = b[i]
  if i == n-1
    b = [b[i]]
  else
    b = b.slice(i+1..n-1)
  end
  late_b = b.gcd
  array.push(late_b.gcd(now_b))
  if i == 0
    now_b = x
  else
    now_b = x.gcd(now_b)
  end
end

p array.max



