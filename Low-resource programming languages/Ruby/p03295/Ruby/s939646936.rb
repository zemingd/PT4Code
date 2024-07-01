n, m=gets.split(' ').map(&:to_i)
s = []
r=0
m.times do
  s1, s2 = gets.split(' ').map(&:to_i)
  s << [s1, s2]
end

while s.count != 0
  b = Array.new(n, 0)
  s.each do |e|
    (e[0]...e[1]).each{|e|b[e] += 1}
  end
  del = b.index(b.max)
  s.each_with_index do |e, i|
    if e[0] <= del && del < e[1]
      s[i]= nil
    end
  end
  s.compact!
  r += 1
end
p r
