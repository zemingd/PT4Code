def f(c,nb,a,b)
  c[a] += b
  return if nb[a].empty?
  nb[a].each {|a1|f(c,nb,a1,b)}
end

(n,q) = gets.chomp.split(' ').map{|m|m.to_i}
c = (1..n).to_a.map{0}
nb = (1..n).to_a.map{[]}
(n-1).times do
  (s,d) = gets.chomp.split(' ').map{|m|m.to_i}
  nb[s-1].push d-1
end
q.times do
  (a,b) = gets.chomp.split(' ').map{|m|m.to_i}
  f(c,nb,a-1,b)
end
puts c.join(' ')