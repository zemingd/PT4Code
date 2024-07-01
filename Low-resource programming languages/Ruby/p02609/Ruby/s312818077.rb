io = STDIN
n=io.gets.to_i
$str=io.gets.chomp
x=$str.to_i(2)
$memo=Array.new(2*10**5+1,nil)
def popcount(x)
  b = 0
  while x > 0
    x &= x - 1
    b += 1
  end
  return b
end
def f(n,r)
  nn=n
  (return $memo[n]) if $memo[n]
  rtn=0
  while (r=n % r) > 0
    n=r
    r=popcount(n)
    (return $memo[n]) if $memo[n]
    rtn+=1
  end 
  $memo[nn] = (rtn+=1)
end
# n.downto(1) {|i|p [x ^ (1 << (i-1)),f(x ^ (1 << (i-1)))]}
def calc(i)
  str=$str.clone
  cnt  = str[i]=='0' ? $allbitcnt+1 : $allbitcnt-1
  str[i]=str[i]=="0" ? "1" : "0"
  f(str.to_i(2),cnt)
end
$allbitcnt=$str.count('1')
$str.size.times do |i|
  puts calc(i)
end
