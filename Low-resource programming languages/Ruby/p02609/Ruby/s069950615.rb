io = STDIN
n=io.gets.to_i
x=io.gets.to_i(2)
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
def f(n)
  rtn=0
  while (r=n % popcount(n)) > 0
    n=r
    rtn+=1
  end 
  rtn+=1
end
n.downto(1) {|i|puts f(x ^ (1 << (i-1)))}
