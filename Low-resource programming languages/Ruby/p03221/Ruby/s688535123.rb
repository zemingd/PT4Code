N,M = gets.split.map(&:to_i)
PY = $<.read.split(/\n/).map{|m|m.split.map(&:to_i)}

pys = PY.sort_by do |k,v|
  k.to_s.rjust(5, '0') + v.to_s.rjust(9, '0')
end

h = {}
prev = -1
i = 0
pys.each do |a|
  i = a[0] == prev ? i+1 : 1
  prev = a[0]
  p = a[0].to_s.rjust(6, '0') 
  y = i.to_s.rjust(6, '0')
  key = "#{a[0]}-#{a[1]}"
  h[key] = "#{p}#{y}" if h[key] != ''
end

PY.each{|a|puts h["#{a[0]}-#{a[1]}"]}

