def ok(i, j, _x, _y, _a)
  if _a == 1
    if i < _x 
      return true
    end
   
  elsif _a == 2
    if i >= _x 
      return true
    end

  elsif _a == 3
    if j < _y 
      return true
    end

  elsif _a == 4
    if j >= _y 
      return true
    end
  end

end

w, h, n = gets.chomp.split(" ").map{|i| i.to_i}
x, y, a = Array.new(3){Array.new(n)}
for i in 0...n
  x[i], y[i], a[i] = gets.chomp.split(" ").map{|i| i.to_i}
end

field = Array.new(w){Array.new(h){false}}

for k in 0...n
  for i in 0...w
    for j in 0...h
      if ok(i, j, x[k], y[k], a[k])
        field[i][j] = true
      end
    end
  end
  #p field
end

s = 0

for i in 0...w
  for j in 0...h
    unless field[i][j] then
      s = s + 1
    end
 end
end

p s
 
