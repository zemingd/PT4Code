n = gets.to_s.to_i
a = gets.to_s.split.map{|t|t.to_i}
q = gets.to_s.to_i
bcs = Array.new(q){ gets.to_s.split.map{|t|t.to_i} }

s = a.sum
t = a.tally
t.default = 0

bcs.each do |b, c|
  
  s -= b * t[b]
  s += c * t[b]
  
  t[c] += t[b]
  t[b] = 0
  
  puts s
end