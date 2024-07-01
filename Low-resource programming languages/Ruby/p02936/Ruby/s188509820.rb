def calcs(x,y,ax,ay,bx,by) ((ax-x)*(by-y)-(bx-x)*(ay-y))/2.0 end

def inpf() a=gets.chomp.split(" ").map(&:to_f)end

def inps() a=gets.chomp.split(" ")end

def copy(a) Marshal.load(Marshal.dump(a)) end

def factorial(n)(n < 2)? 1 : (2..n).inject(:*) end

def scount(a) b=na(a.max+1);a.each{|n|b[n]+=1};return b end

def na(n,d=0) Array.new(n,d)end

def na2(n,m,d=0) Array.new(n){Array.new(m,d)}end

def na3(n,m,l,d=0) Array.new(n){Array.new(ym){Array.new(l,d)}}end

def yn(f) return (f)? "Yes": "No" end

def ynb(f) return (f)? "YES": "NO" end

def ap(a) a.each{|u| p u} end

def bit(n) n.to_s(2).split("").map(&:to_i) end

def inp() a=gets.chomp.split(" ").map(&:to_i)end

def answer(tree,counter)
  ans = na(counter.size)
  que = [[1,1,0]]
  used = na(counter.size,false)
  while que.size > 0
    pa, x, c = que.shift
    c += counter[x]
    ans[x] = c
    tree[x].each do |xx|
      next if(xx == pa)
      que.push([x,xx,c])
    end
  end
  return ans
end

n,q = inp
tree = na2(n+1,0)
counter = na(n+1,0)
(n-1).times do |i|
  d = inp
  tree[d[0]].push(d[1])
  tree[d[1]].push(d[0])
end
q.times do |j|
  d = inp
  counter[d[0]] += d[1]
end
ans = answer(tree,counter)
(1...n).each do |i|
  print "#{ans[i]} "
end
puts ans[n]