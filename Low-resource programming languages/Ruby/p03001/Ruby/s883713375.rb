W, H, X, Y = gets.split.map(&:to_f)

def r(w,h,x,y)
    if w>=  x * (h/y)
        h * (x * (h/y))/2
    else
        w * (y * (w/x))/2
    end
end

map = {}
map[Y/X] = r(W,H,X,Y) if X>0 && Y>0
map[-Y/(W-X)] = r(W,H,W-X,Y) if W>X && Y>0
map[-(H-Y)/W] = r(W,H,X,H-Y) if H>Y && X>0
map[(H-Y)/(W-X)] = r(W,H,W-X,H-Y) if W>X && H>Y
map[0] = [Y,H-Y].min * W
map[Float::INFINITY] = [X,W-X].min * H
#p map
#p map.values
ans = map.values.max
notUniq = map.values.select{|i| i==ans}.size > 1
puts "#{ans} #{notUniq ? 1 : 0}"