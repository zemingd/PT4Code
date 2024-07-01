n = gets.to_i
pa = gets.split(" ").map(&:to_i)
qa = gets.split(" ").map(&:to_i)
p,q = 0,0

l = (1..n).to_a
n.times do |i|
  s = l.count {|j| j < pa[i]}
  if s != 0 then
    t = (1..(n-i-1)).to_a.inject(1) {|k, m| k*m}
    p += t * s
  end
  l.delete(pa[i])
end

l = (1..n).to_a
n.times do |i|
  s = l.count {|j| j < qa[i]}
  if s != 0 then
    t = (1..(n-i-1)).to_a.inject(1) {|k, m| k*m}
    q += t * s
  end
  l.delete(qa[i])
end

print (p-q).abs