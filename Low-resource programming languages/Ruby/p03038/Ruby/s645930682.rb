n, m = gets.rstrip.split.map(&:to_i)
an   = gets.rstrip.split.map(&:to_i)
bcs  = m.times.map{ gets.rstrip.split.map(&:to_i) }

an.sort!

bcs.sort!{ |bc1, bc2| bc2[1]<=>bc1[1] }
cs = []
bcs.each{ |bc| bc[0].times{ cs << bc[1] } }

0.upto(cs.size - 1) do | i |
  if an[i] < cs[i]
    an[i] = cs[i]
  else
    break
  end
end

sum = 0
an.each{ |a| sum += a }

p sum