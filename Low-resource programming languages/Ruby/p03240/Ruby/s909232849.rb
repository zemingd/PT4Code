gets
*s,(i,j,k)=$<.map{|s|s.split.map &:to_i}.sort_by &:last
101.times{|x|101.times{|y|h=k+(i-x).abs+(j-y).abs
s.all?{|i,j,k|k==[h-(i-x).abs-(j-y).abs,0].max}&&($><<[x,y,h]*" ";exit)}}