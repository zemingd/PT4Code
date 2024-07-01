h,w,*S = $<.read.split
H,W,Q = h.to_i, w.to_i, []
D = [[0,1],[0,-1],[1,0],[-1,0]]
S.each {|s| s << "#" }
S << "#"*W
(T=H*W).times {|i| Q << i.divmod(W).push(Array.new(T)) }
p T.times {|c|
  Q.pop(Q.size).each {|h,w,a|
    next  if a[i=h*W+w] || S[h][w]!=?.
    a[i] = c
    D.each {|y,x| Q << [h+y,w+x,a] }
  }
  break [0,c-1].max  if Q.empty?
}