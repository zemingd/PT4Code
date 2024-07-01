n, m = gets.rstrip.split.map(&:to_i)
an   = gets.rstrip.split.map(&:to_i)
bcs  = m.times.map{ gets.rstrip.split.map(&:to_i) }

an.sort!

cs = []
bcs.each{ |bc| bc[0].times{ cs << bc[1] } }
cs.sort!{ |a,b| b<=>a }

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