h,w,*S = $<.read.split
H,W,Q = h.to_i, w.to_i, []
D = [[0,1],[0,-1],[1,0],[-1,0]]
S.each {|s| s << "#" }
S << "#"*W
(T=H*W).times {|i| h,w = q = i.divmod(W); Q << q.push(a=Array.new(T)) if S[h][w]==?. }
p T.times {|c|
  Q.pop(Q.size).each {|h,w,a|
    a[h*W+w] = c
    D.each {|y,x| y+=h; x+=w; Q << [y,x,a] unless a[y*W+x] || S[y][x]!=?.}
  }
  break c  if Q.empty?
}