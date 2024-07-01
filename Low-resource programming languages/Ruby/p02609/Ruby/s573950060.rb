io = STDIN
n=io.gets.to_i
$str=io.gets.chomp
x=$str.to_i(2)
$memo={}
def popcount(x)
  return $memo[x] if $memo.has_key?(x)
  b = 0
  while x > 0
    x &= x - 1
    b += 1
  end
  return $memo[x]=b
end
def f(n,r)
  nn=n
  rtn=0
  while (r=n % r) > 0
    n=r
    r=popcount(n)
    (return $memo[n]) if $memo[n]
    rtn+=1
  end 
  (rtn+=1)
end
$allbitcnt=$str.count('1')
$str.size.times do |i|
  str=$str.clone
  cnt  = str[i]=='0' ? $allbitcnt+1 : $allbitcnt-1
  str[i]=str[i]=="0" ? "1" : "0"
  puts f(str.to_i(2),cnt)
end
