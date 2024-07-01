n=gets.to_i
t=Array.new(n)
n.times{|i| t[i]=gets.to_i}

def gcd(a, b)
  a, b=b, a if a<b
  if a%b==0
    return b
  else
    return gcd(b, a%b)
  end
end

mi=10**18+1
n.times do |i|
  (i...n).each do |j|
    g=gcd(t[i], t[j])
    l=t[i]*t[j]/g
    next if l>10**18
    ok=true
    n.times do |k|
      if l%t[k]!=0
        ok=false
        break
      end
    end
    mi=[mi, l].min if ok
  end
end

raise if mi>10**18

puts mi
