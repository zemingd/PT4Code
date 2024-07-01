require 'prime'

N = gets.to_i

def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

ans = 0
1.step(N, 2){|n|
  ans += 1 if divisors(n).size == 8
}

puts ans
