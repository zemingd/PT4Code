n = gets.chop.to_i
array = [a, b, c]
a = 1
b = 1
c = 1
d = 0
sum = 0
while array[0] <= n
  def ngcd(array)
    array.each{ |a| d = gcd(d, a) }
    sum += d
    a += 1
  end
end
puts sum