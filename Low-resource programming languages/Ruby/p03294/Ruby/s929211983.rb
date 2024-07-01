n = gets.chomp.to_i
la = gets.split(" ").map(&:to_i)

def gcd(a, b)
  a, b = b, a if a < b
  return a if b == 0
  _mod = a.modulo(b)
  if _mod == 0
    b
  else
    gcd(b, _mod)
  end
end

def lcm(a, b)
  a * b / gcd(a, b)
end

ri = la.inject{|a,b| a.lcm(b)}-1

maxa = la.sort[-1]
m = maxa * 2 - 1

sum = 0
n.times do |i|
  sum += ri%la[i]
end
puts sum