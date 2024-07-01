h,w=gets.split.map &:to_i
w+=1
maze=[false]*w + $<.flat_map{|s| s.chomp.chars.map{|c| c==?. }.push(false) } + [false]*w
cand=(0...maze.size).select{|i| maze[i] }
ans=0
cand.each{|s|
  mw=maze.dup
  mw[s]=false
  q=[s]
  ans=[ans,0.step{|k|
    qn=[]
    q.each{|c|
      [c-w,c-1,c+1,c+w].each{|nc|
        next unless mw[nc]
        mw[nc]=false
        qn.push(nc)
      }
    }
    break k if qn.empty?
    q=qn
  }].max
}
puts ans