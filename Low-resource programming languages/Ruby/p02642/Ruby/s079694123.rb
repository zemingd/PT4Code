require 'prime'
def divisors(n)
   n.prime_division.inject([1]) do |ary, (p, e)|
     (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
   end.sort
end

n = gets.to_i
a = gets.split.map(&:to_i)

a.sort!

c = []
count = 0

a.each.with_index do |m, i|
  if divisors(m).any? { |k|
      if k == m
        nil
      else
      c.bsearch_index{|j| j <=> k }
      end
    }
  elsif a[i+1] == m
    c << m
  else
    count += 1
    c << m
  end
end

puts count

