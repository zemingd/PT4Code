W, H, X, Y = gets.split.map(&:to_f)

def r(w,h,x,y)
    if h<= w * (y/x)
        h * (x * (h/y))/2
    else
        w * (y * (w/x))/2
    end
end

map = {}
map[Y/X] = r(W,H,X,Y)
map[-Y/(W-X)] = r(W,H,W-X,Y) if W>X
map[-(H-Y)/W] = r(W,H,X,H-Y) if H>Y
map[(H-Y)/(W-X)] = r(W,H,W-X,H-Y) if W>X && H>Y
map[0] = [Y,H-Y].min * W
map[Float::INFINITY] = [X,W-X].min * H
#puts map
ans = map.values.max
notUniq = map.values.select{|i| i==ans}.size > 1
puts "#{ans} #{notUniq ? 1 : 0}"