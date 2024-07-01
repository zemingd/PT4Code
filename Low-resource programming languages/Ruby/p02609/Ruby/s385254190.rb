io = STDIN
n=io.gets.to_i
x=io.gets.to_i(2)
$memo=Array.new(2*10**5+1,nil)
def popcount(x)
  b = 0
  while x > 0
    x &= x - 1
    b += 1
  end
  return b
end
def f(n)
  nn=n
  (return $memo[n]) if $memo[n]
  rtn=0
  while (r=n % popcount(n)) > 0
    n=r
    (return $memo[n]) if $memo[n]
    rtn+=1
  end 
  $memo[nn] = (rtn+=1)
end
n.downto(1) {|i|puts f(x ^ (1 << (i-1)))}
