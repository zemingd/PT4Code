_,*s=$<.map{|s|s.split.map &:to_i}
101.times{|v|
  101.times{|w|
    e,f,g=s.find{|x,y,h|h>0}
    k=g+(e-v).abs+(f-w).abs
    s.all?{|x,y,h|
      h==[k-(x-v).abs-(w-y).abs,0].max
    }&&(
      $><<[v,w,k]*" "
      exit
    )
  }
}