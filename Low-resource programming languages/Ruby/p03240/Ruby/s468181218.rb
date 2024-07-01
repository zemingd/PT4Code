xyh=[]
n=gets.to_i
n.times{if (s=gets.split.map(&:to_i))[2]!=0 then xyh << s end}
if xyh.size==1 then puts xyh.join(" ");exit end
101.times do |x|
  101.times do |y|
    h=xyh[0][2]+(x-xyh[0][0]).abs+(y-xyh[0][1]).abs
    1.upto(xyh.size-1) do |i|
      if h-(x-xyh[i][0]).abs-(y-xyh[i][1]).abs!=xyh[i][2]
        break
      elsif i==xyh.size-1
        puts [x,y,h].join(" ")
        exit
      end
    end
  end
end
