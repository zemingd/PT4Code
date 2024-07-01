require 'prime'
N = gets.to_i
DS = N.prime_division
def dig(m,i,&f)
  if i == DS.size
    return f.call(m)
  end
  a,b = DS[i]
  (0..b).each{ |j| dig(m*(a**j), i+1, &f) }
end

ans = N.to_s.size
dig(1,0) { |a| ans = [ans, [a,N/a].map{ |x| x.to_s.size }.max].min }
p ans
