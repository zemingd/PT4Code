k = gets.to_i
s = 0
class Array
  def gcd
      self.inject{|a,b| a.gcd(b)}
  end
end
def sp(l)
  sum = 0
  for i in 1..l
    for j in 1..l
      for m in 1..l
       sum += 1 if [i,j,m].gcd == 1
      end
    end
  end
  return sum
end
x = 0
for n in 2..k
  y = sp(k/n)
  x += y
  s += n * y
end

puts s+(k**3)-x