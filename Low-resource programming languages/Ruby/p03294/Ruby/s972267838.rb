gets
a=gets.split(' ').map(&:to_i)
m=a.to_a.inject(:lcm)
s = []
m.times do |t|
  s << a.map{|e|(t+1) % e}.sum
end
p s.max
