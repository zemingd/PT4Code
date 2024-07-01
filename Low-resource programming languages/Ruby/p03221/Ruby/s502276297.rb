DBG = !true
n,m = gets.split.map{|x| x.to_i}

seq4city = Array.new(m, 0)
cy4p = []
for i in 0...n
  cy4p << []
end

p = []
y = []
for i in 0...m
  x = gets.split.map{|x| x.to_i}
  p[i] = x[0]-1  # pref: begin-1 to begin-0
  y[i] = x[1]
  cy4p[p[i]] << [i, y[i]]
end

if DBG
  print "n:#{n} m:#{m}\n"
  print p
  print "\n"
  print y
  print "\n"
  print cy4p
  print "\n"
end

for j in 0...n
  cy4p[j].sort_by!{|x| x[1]}
  for k in 0...cy4p[j].size
    seq4city[cy4p[j][k][0]] = k
  end
end

if DBG
  print "cy4p:\n"
  print cy4p
  print "\nseq4city:\n"
  print seq4city
  print "\n"
end

for i in 0...m
  printf("%06d%06d\n", p[i]+1, seq4city[i]+1)
end
