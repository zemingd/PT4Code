w, h, n = gets.chomp.split(" ").map{|i| i.to_i}
x, y, a = Array.new(3){Array.new(n)}
for i in 0...n
    x[i], y[i], a[i] = gets.chomp.split(" ").map{|i| i.to_i}
end

field = Array.new(w){Array.new(h){false}}

def ok(i, j, _x, _y, a)
  case a
  when 1
    if i < _x
      true
    else
      false
    end
  when 2
    if i >= _x 
      true
    else
      false
    end
  when 3
    if j < _y
      true
    else
      false
    end
  when 4
    if j >= _y
      true
    else
      false
    end
  end
end

for k in 0...n
  for i in 0...w
    for j in 0...h
      if ok(i, j, x[k], y[k], a[k])
        field[i][j] = true
      end
    end
  end
end

ans = 0
for i in 0...w
  for j in 0...h
    if field[i][h-1-j]
      #print "x"
    else
      #print "."
      ans += 1
    end
  end
  #print "\n"
end
puts ans