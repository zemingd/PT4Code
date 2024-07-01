x,y=gets.split.map &:to_i
p y>=x ? x*y>0 ? y-x : (x+y).abs+1 : x*y>0 ? x-y+2 : (x+y).abs+1