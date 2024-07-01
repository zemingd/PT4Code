x,y=gets.split.map(&:to_i)
p (x.abs-y.abs).abs+(x*y<0 ? 1:y>x ? 0:+2)