require 'prime'

#約数一覧
def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

D = divisors(gets.to_i)

s = D.size
if s.even? then
  puts [Math.log10(D[s/2] + 1).ceil, Math.log10(D[(s-2)/2] + 1).ceil].max
else
  puts Math.log10(D[s/2] + 1).ceil
end
