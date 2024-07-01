MOD = 998244353
io = STDIN
n=io.gets.to_i
ar=io.gets.split.map(&:to_i)
hash={}
(1..ar.max).each{|i|hash[i]=0}
ar[1..n].each do |a|
  hash[a]+=1
end
def modpow(a,b)
  return 1 if b==0
  b.odd? ? (modpow(a,b-1)*a)%MOD : modpow(a**2%MOD,b/2)
end

def calc(cnts)
  rtn=1
  cnts.each_cons(2) do |a,b|
    rtn*=modpow(a,b)
  end
  rtn
end
if ar[0]!=0 || hash.values.include?(0)
  puts 0
else
  puts calc(hash.values)
end

