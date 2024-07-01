require 'prime'

def common_divisors(n)
  return [1] if n == 1

  tmp = n.prime_division.map do |e|
    (0..e[1]).to_a.map do |i|
      e[0]**i
    end
  end
    
  tmp.reduce{|p,q| p.product(q)}.map do |a|
    [a].flatten.reduce(&:*)
  end.sort
end

n = gets.to_i

div1 = common_divisors(n)
div2 = div1.reverse

ans = Float::INFINITY
div1.size.times do |i|
  digits1 = div1[i].to_s.length
  digits2 = div2[i].to_s.length
  f = [digits1, digits2].max
  ans = [ans, f].min
end

puts ans
