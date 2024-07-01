gets
a=gets.split(' ').map(&:to_i)
m=a.to_a.inject(:lcm)
s = []
m.times do |t|
  s << a.inject(0){|sum, e| sum+((t+1) % e)}
end
p s.max
