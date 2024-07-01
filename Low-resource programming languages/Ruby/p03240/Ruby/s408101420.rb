N=gets.to_i
xyh=N.times.map{gets.split.map &:to_i}
(0..100).each{|cx|
  (0..100).each{|cy|
    ch=0
    xyh.each{|x,y,h|if h>0 then ch=h+(cx-x).abs+(cy-y).abs;break end}
    flag=true
    xyh.each{|x,y,h|if h!=[ch-(cx-x).abs-(cy-y).abs,0].max then flag=false;break end}
    if flag then puts "%d %d %d"%[cx,cy,ch];exit end
  }
}