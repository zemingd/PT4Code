require 'prime'

def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end
end

N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i).sort

ans = 0
(0...N).each{|i|
  next if i > 0 && A[i] == A[i-1]
  next if i < N-1 && A[i] == A[i+1]
  f = true
  divisors(A[i]).each{|d|
    a = A[0, i].bsearch{|x| x >= d}
    next if a.nil?
    (f = false; break) if d == a
  }
  ans += 1 if f
}

puts ans
