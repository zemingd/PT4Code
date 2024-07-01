x = gets.to_i

require "prime"

def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

divisors(x).each do |num|
  d = x / num
  a = 0
  b = -num
  line = a ** 4
  m = a ** 4 + (a ** 3) * b + (a ** 2) * (b ** 2) + a * (b ** 3) + b ** 4

  while line < x
    if m == d
      puts "#{a} #{b}"
      return
    end
    
    a += 1
    b += 1
    line = a ** 5
    m = a ** 4 + (a ** 3) * b + (a ** 2) * (b ** 2) + a * (b ** 3) + b ** 4
  end
end
