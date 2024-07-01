n = gets.to_i
an = gets.split(' ').map{|a|a.to_i}

def gcd(a, b)
  gcd(b, a) if b > a
  return b if (r = a % b).zero?
  gcd(b, r)
end

if an.size == 2
  p an.max
  exit
end

if an.size == 3
  p [gcd(an[0], an[1]), gcd(an[0], an[2]), gcd(an[1], an[2])].max
  exit
end

max = 0
an.combination(an.size-1).to_a.each do | o |
  tmp = gcd(o[0],o[1])
  2.upto(o.size-1) do | i |
    tmp = gcd(tmp, o[i])
  end
  max = tmp if max < tmp
end
p max