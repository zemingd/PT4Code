W,H,N=gets.split.map &:to_i
c=Array.new(H){[1]*W}
N.times do
  x,y,a=gets.split.map &:to_i
  case a
    when 1
      H.times{|i|x.times{|j|c[i][j]=0}}
    when 2
      H.times{|i|x.upto(W-1){|j|c[i][j]=0}}
    when 3
      y.times{|i|W.times{|j|c[i][j]=0}}
    when 4
      y.upto(H-1){|i|W.times{|j|c[i][j]=0}}
  end
end
p c.map{|a|a.inject :+}.inject :+
