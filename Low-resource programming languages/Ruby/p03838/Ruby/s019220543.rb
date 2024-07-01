x,y=gets.split.map(&:to_i)

distance=y.abs-x.abs
distance=distance.abs

change_pm=0
if x>=0 && y>=0 && x>=y || x<=0 && y<=0 && x>=y
    change_pm+=2
elsif x>=0 && y<=0 && y.abs>=x.abs || x<0 && y>=0 && y.abs>=x.abs
    change_pm+=1
end

p distance+change_pm