
def gcd(a,b)
  a, b = b, a % b while b > 0
  a
end

n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

if n == 1
  puts (a[0] - x).abs
else
  d = []
  (n - 1).times do |i|
    d.push a[i + 1] - a[i]
  end
  
  g = d.shift
  d.each do |t|
    g = gcd(g, t)
  end
  
  xd = []
  a.each do |t|
    xd.push (t - x).abs
  end
  
  puts xd.map{|d| gcd(d, g)}.max
end
