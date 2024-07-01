MOD = 998244353
io = STDIN
n=io.gets.to_i
D=io.gets.split.map(&:to_i)
hash={}
(0..D.max).each{|d|hash[d]=0}
D.each do |d|
  hash[d]+=1
end
def calc(hash)
  cnts=(1..(D.max)).map{|d|hash[d]}
  return 0 if cnts.include?(0)
  rtn=1
  cnts.each_cons(2) do |a,b|
    rtn*=a**b % MOD
  end
  rtn
end
if D[0]!=0 || hash[0]>1
  puts 0
else
  puts calc(hash)
end
