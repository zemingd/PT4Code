h=[]; w=[]; i=0
loop do
  h0,w0=gets.split.map &:to_i
  h0==0&&break
  h<<h0; w<<w0
  i+=1
end
h.size.times do|i|
  h[i].times{puts "#"*w[i]}
  if i<h.size-1 then print "\n" end
end

