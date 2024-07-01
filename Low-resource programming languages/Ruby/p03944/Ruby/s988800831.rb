def ok(i, j, _x, _y, _a)
  if _a == 1
    i < _x
  elsif _a == 2
    i >= _x
  elsif _a == 3
    j < _y
  elsif _a == 4
    j >= _y
  end
end

w, h, n = gets.chomp.split(" ").map{|i| i.to_i}
x = Array.new(n)
y = Array.new(n)
a = Array.new(n)
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
end

ans = 0

for i in 0...w
  for j in 0...h
    if !field[i][j]
      ans += 1
    end
  end
end

puts ans

