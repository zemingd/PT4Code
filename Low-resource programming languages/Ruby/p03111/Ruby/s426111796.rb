@inf=10000000000
def mp(s)
  as=s.count('a')
  bs=s.count('b')
  cs=s.count('c')
  return @inf if as==0||bs==0||cs==0
  asum,bsum,csum=0,0,0
  (0..(@n-1)).each do |i|
    asum+=@l[i] if s[i]=='a'
    bsum+=@l[i] if s[i]=='b'
    csum+=@l[i] if s[i]=='c'
  end
  return (@a-asum).abs+(@b-bsum).abs+(@c-csum).abs+10*(as+bs+cs-3)
end

def dfs(s)
  return mp(s) if s.size == @n
  ret1=dfs(s+"a")
  ret2=dfs(s+"b")
  ret3=dfs(s+"c")
  ret4=dfs(s+"d")
  return [ret1, ret2, ret3, ret4].min
end

@n,@a,@b,@c=gets.split(' ').map(&:to_i)
@l=Array.new(@n){gets.to_i}
puts dfs("")