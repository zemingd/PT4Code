def satisfy?(cx,cy,h,x,y,l)
  l==[h-(x-cx).abs-(y-cy).abs,0].max
end

def height(cx,cy,x,y,l)
  l+(x-cx).abs+(y-cy).abs
end

n=gets.to_i
info=n.times.map{gets.split.map(&:to_i)}
k=info.find{|x,y,l|l>0}
0.upto(100){|cx|
  0.upto(100){|cy|
    h=height(cx,cy,*k)
    if info.all?{|x,y,l|satisfy?(cx,cy,h,x,y,l)}
      puts [cx,cy,h]*" "
      exit
    end
}}