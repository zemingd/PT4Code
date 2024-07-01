N = gets.to_i
xyh = $<.map{|s| s.split.map &:to_i }
xyh1, *xyh2 = xyh

def f(xyh, cx, cy)
  x, y, h = xyh
  ch = (cx - x).abs + (cy - y).abs + h
end

cy, cx = [*0..100].product([*0..100]).find{|cy, cx|
  ch = f(xyh1, cx, cy)
  ch >= 1 && xyh2.all?{|a|
    f(a, cx, cy) == ch
  }
}

ch = f(xyh1, cx, cy)
puts [cx, cy, ch]*" "
