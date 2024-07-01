io = STDIN
io = DATA   #!#!#!#!must delete
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
  m1 = 0x55555555
  m2 = 0x33333333
  m4 = 0x0f0f0f0f
  x -= (x >> 1) & m1
  x = (x & m2) + ((x >> 2) & m2)
  x = (x + (x >> 4)) & m4
  x += x >> 8
  return (x + (x >> 16)) & 0x3f
end
puts [popcount(bins^binx),popcount(bins^biny)].min
