N=gets.to_i
c=[]
x0,y0,h0=gets.split.map &:to_i
x1,y1,h1=gets.split.map &:to_i
101.times{|x|
  101.times{|y|
    if h0==0 then
      if (x0-x).abs+(y0-y).abs>=(x1-x).abs+(y1-y).abs+h1 then
        c << [x,y,(x0-x).abs+(y0-y).abs]
      end
    elsif h1==0 then
      if (x0-x).abs+(y0-y).abs+h0<=(x1-x).abs+(y1-y).abs then
        c << [x,y,(x1-x).abs+(y1-y).abs]
      end
    else
      if (x0-x).abs+(y0-y).abs-(x1-x).abs-(y1-y).abs==h1-h0 then
        c << [x,y,h0+(x0-x).abs+(y0-y).abs]
      end
    end
  }
}
(N-2).times{|i|
  x,y,h=gets.split.map &:to_i
  if h!=0 then
    c=c.select{|o|(x-o[0]).abs+(y-o[1]).abs+h==o[2]}
  else
    c=c.select{|o|(x-o[0]).abs+(y-o[1]).abs>=o[2]}
  end
}
puts c[0].join(' ')