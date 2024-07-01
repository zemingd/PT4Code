require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
x = gets.chomp.to_i

def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

def uhen(a, b)
  a2 = a*a
  b2 = b*b
  (a2 * a2) + (a2 * a * b) + (a2 * b2) + (a * b * b2) + (b2 * b2)
end

upper = 10**9
divs = divisors(x)
de = false
divs.each do |div|
  # p div
  a = div
  b = 0
  while true
    a5b5 = (a-b) * uhen(a,b)
    p [a,b,a5b5] if de
    if a5b5 == x
      puts [a,b].join(' ')
      exit
    elsif a5b5 < 1 || upper < a5b5
      break
    else
      a += 1
      b += 1
    end
  end

  a = div
  b = 0
  while true
    a5b5 = (a-b) * uhen(a,b)
    p [a,b,a5b5] if de
    if a5b5 == x
      puts [a,b].join(' ')
      exit
    elsif a5b5 < 1 || upper < a5b5
      break
    else
      a -= 1
      b -= 1
    end
  end
end