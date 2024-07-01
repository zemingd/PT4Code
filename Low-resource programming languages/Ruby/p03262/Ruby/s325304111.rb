n, x = gets.chomp.split.map(&:to_i)
xs = gets.chomp.split.map(&:to_i)

xxs = xs.map{|i| (i - x).abs}

def gcd(a,b)
  while b > 0
      a,b = b,a%b
  end
  return a
end

start = xxs[0]
tail = xxs[1..n-1]

newgcd = start
tail.each do |j|
  newgcd = gcd(newgcd, j)
end

puts newgcd
