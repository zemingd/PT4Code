a,b,c,d,e,f=gets.split.map(&:to_i)
w=[a*100,b*100].sort.reverse
s=[c,d].min
fmax=f-s
while true
  if fmax-w.first >=0
    fmax=fmax-w.first
  elsif fmax-w.last >=0
    fmax=fmax-w.last
  else
    break
  end
end
puts "#{f-fmax} #{s}"
