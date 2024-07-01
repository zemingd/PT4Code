MOD = 998244353
io = STDIN
io = DATA   #!#!#!#!must delete
n=io.gets.to_i
ar=io.gets.split.map(&:to_i)
hash={}
(1..ar.max).each{|i|hash[i]=0}
ar[1..n].each do |a|
  hash[a]+=1
end
def calc(hash)
  cnts=(1..(hash.values.size)).map{|i|hash[i]}
  rtn=1
  cnts.each_cons(2) do |a,b|
    rtn*=a**b % MOD
  end
  rtn
end
if ar[0]!=0 || hash.values.include?(0)
  puts 0
else
  puts calc(hash)
end
