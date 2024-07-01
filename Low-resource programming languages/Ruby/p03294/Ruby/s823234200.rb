N = gets.to_i
a = gets.split.map(&:to_i)

def gcd(a, b)
  if b == 0
    return a
  end

  gcd(b, a % b)
end

def lcm(a, b)
  a * b / gcd(a, b)
end

l = lcm(1, a[0])

(1...a.size).each do |i|
  l = lcm(l, a[i])
end

def f(a, ad)
  sum = 0
  a.each do |aa|
    sum += ad % aa
  end
  sum
end

puts f(a, l - 1)