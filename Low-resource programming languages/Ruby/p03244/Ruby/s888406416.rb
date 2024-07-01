# 1 0 2 2 3 2
n = gets.to_i
a, b = gets.split.map(&:to_i).each_slice(2).to_a.transpose
cnt = 0
# p [a,b]

ag = a.group_by{|x|x}.map{|k,v|[k,v.size]}.sort_by{|x|-x[1]}
bg = b.group_by{|x|x}.map{|k,v|[k,v.size]}.sort_by{|x|-x[1]}
# p [ag, bg]

a1 = ag[0][0]
a2 = ag[1] ? ag[1][0] : nil
b1 = bg[0][0]
b2 = bg[1] ? bg[1][0] : nil
# p [a1, a2, b1, b2]

af = ag.flat_map{|(x,c)|[x] * c}
bf = bg.flat_map{|(x,c)|[x] * c}
# p [af, bf]

result = []
if a1 != b1
  ac = af.count{|x|x != a1}
  bc = bf.count{|x|x != b1}
  result << ac + bc
else
  ac = af.count{|x|x != a1}
  bc = bf.count{|x|x != b2}
  result << ac + bc
  ac = af.count{|x|x != a2}
  bc = bf.count{|x|x != b1}
  result << ac + bc
end
p result.min
