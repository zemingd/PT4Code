MOD=10**9+7
cnt=0; sum=0; prev=nil; can=true; h=Hash.new(0)
def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end

def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

def C(a,b) b==0||a==b ? 1 : (b=a-b if a/2<b;(a-b+1..a).inject(:*)/(1..b).inject(:*)) end

def puts_yesno(can) puts(can ? 'Yes' : 'No') end
def putsend(s) puts s; exit end
def debug(k,v) puts "#{k}:#{v}" end
########### ( ˘ω˘ )ｽﾔｧ… ###########
N,M=gsmi
l=N.times.map{gs.chars}
max=0

# 移動ベクトル l u r d
dx = [-1,0,1,0]
dy = [0,1,0,-1]

N.times do |i|
  M.times do |j|
    sx=i
    sy=j
    
    # stから[i][j]までの距離
    d = Array.new(N){Array.new(M,-1)}
    # 操作キュー
    que = [[sx,sy]]
    d[sx][sy]=0
    
    q = nil
    while que.size>0 do
      q = que.shift
    
      4.times do |i|
        x1 = q[0]+dx[i]
        y1 = q[1]+dy[i]
        next if x1<0 || y1<0 || x1>=N || y1>=M
        # 走査済ならスキップ
        next if d[x1][y1]!=-1
    
        if l[x1][y1]!='#'
          que<<[x1,y1]
          d[x1][y1]=d[q[0]][q[1]]+1
        end
      end
    end
    
    m1=0
    N.times do |i1|
      M.times do |i2|
        c=d[i1][i2]
        m1=c if m1<c
      end
    end
    max=m1 if max<m1
  end
end

puts max
