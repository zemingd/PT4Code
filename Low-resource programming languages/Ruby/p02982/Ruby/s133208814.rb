require'matrix'
gets
p$<.map{|s|Vector[*s.split.map(&:to_i)]}.combination(2).count{|x,y|(x-y).norm%1==0}