require "prime"
n = gets.chomp.to_i
 
def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end
 
cnt = 0
 
(1..n).to_a.each do |i|
  if i % 2 == 1 && divisors(i).size == 8
    cnt += 1
  end
end
 
puts cnt