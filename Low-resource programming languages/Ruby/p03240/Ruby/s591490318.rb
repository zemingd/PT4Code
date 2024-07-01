N=gets.to_i
c=[]
d=(1..N).map{gets.split.map &:to_i}
x0,y0,h0=d[0]
if h0==0 && d[1][2]==0 then
  d[1],d[2]=d[2],d[1]
end
x1,y1,h1=d[1]
101.times{|x|
  101.times{|y|
    if h0==0 && h1!=0 then
      if (x0-x).abs+(y0-y).abs>=(x1-x).abs+(y1-y).abs+h1 then
        c << [x,y,(x1-x).abs+(y1-y).abs+h1]
      end
    elsif h0!=0 && h1==0 then
      if (x0-x).abs+(y0-y).abs+h0<=(x1-x).abs+(y1-y).abs then
        c << [x,y,(x0-x).abs+(y0-y).abs+h0]
      end 
    else
      if (x0-x).abs+(y0-y).abs-(x1-x).abs-(y1-y).abs==h1-h0 then
        c << [x,y,h0+(x0-x).abs+(y0-y).abs]
      end
    end
  }
}
(N-2).times{|i|
  x,y,h=d[i+2]
  if h!=0 then
    c=c.select{|o|(x-o[0]).abs+(y-o[1]).abs+h==o[2]}
  else
    c=c.select{|o|(x-o[0]).abs+(y-o[1]).abs>=o[2]}
  end
}
puts c[0].join(' ')