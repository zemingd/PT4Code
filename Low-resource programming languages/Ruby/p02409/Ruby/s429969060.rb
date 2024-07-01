n=gets.to_i
h={}
n.times do
a=gets
h[a.chomp]=1
end

for b in 1..4 do
 for f in 1..3 do
  for r in 1..10 do
    for v in 0..9
      print ""　if !h.has_key?(b+" "+f+" "+r+" "+v) ? "v":"0"
    end
  end
  print "¥n"
 end
  puts*20
end
