io = STDIN

s=io.gets.chomp
len=s.size
x='01'*(len/2)
y='10'*(len/2)
if len.odd?
  x=x+"0"
  y=y+"1"
end
bins=s.to_i(2)
binx=x.to_i(2)
biny=y.to_i(2)
def popcount(x)
  x.to_s(2).count("1")
end
puts [popcount(bins^binx),popcount(bins^biny)].min
