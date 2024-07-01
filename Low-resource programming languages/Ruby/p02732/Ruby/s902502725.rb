n = gets.to_i
a = gets.split.map(&:to_i)
class Integer
  def !
    (1..self).inject(1, :*)
  end
end
def neko(k, b)
    d = b.dup
    d.delete_at(k)
    hamuta = 0
    g = d.dup
    for z in 0..d.length
        f = g.count(d[z])
        g.delete(d[z])
        hamuta += f.! / ( (f-2).! * 2.! )
    end
    return hamuta
end

rlt = []
n.times do |j|
   rlt << neko(j, a)
end
puts rlt
