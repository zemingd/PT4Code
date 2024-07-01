require 'prime'
def divisors(n)
   n.prime_division.inject([1]) do |ary, (p, e)|
     (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
   end.sort
end

n = gets.to_i
a = gets.split.map(&:to_i)

#a.sort!
h = {}
a.each do |i|
  if h[i]
    h[i] += 1
  else
    h[i] = 1
  end
end

count = 0

a.each do |m|
  ok = true
  divisors(m).each do |j|
    if m == j
      if h[j] > 1
        ok = false
        break
      end
    elsif h[j]
      ok = false
      break
    end
  end
  if ok
    count += 1
  end
end

puts count


