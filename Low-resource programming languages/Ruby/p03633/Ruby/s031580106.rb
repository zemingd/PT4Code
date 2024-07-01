n = gets.to_i
t = []
n.times do
  tt = gets.to_i
  t << tt
end
puts t.inject{|a,b| a.lcm(b)}