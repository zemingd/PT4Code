MOD = 998244353
io = STDIN
n=io.gets.to_i
D=io.gets.split.map(&:to_i)
d_cnt=Array.new(D.max+1,0)
D.each do |d|
  d_cnt[d]+=1
end
def calc(d_cnt)
  rtn=1
  d_cnt.each_cons(2) do |a,b|
    rtn*=a**b % MOD
  end
  rtn
end
if D[0]!=0 || d_cnt[0]!=1 || d_cnt.include?(0)
  puts 0
else
  puts calc(d_cnt)
end
