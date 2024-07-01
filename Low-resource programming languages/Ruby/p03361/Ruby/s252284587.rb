h,w=gets.split.map(&:to_i)
canv=[]
h.times{|i|canv[i]=gets}
flag=false
h.times{|y|
  w.times{|x|
    if canv[y][x]=='#' then
      if (y-1<0 or canv[y-1][x]=='.') and (y+1>=h or canv[y+1][x]=='.') and (x+1>=w or canv[y][x+1]=='.') and (x-1>=w or canv[y][x-1]=='.') then
        flag=true
      end
    end
  }
}
puts flag ?"No":"Yes"