n=gets.to_i
m=gets.split.map(&:to_i)
s = m.inject(:+)
ns = 0
 
r = m.map do |e|
  s -= e
  ns += e
  (s-ns).abs
end
 
p r.min