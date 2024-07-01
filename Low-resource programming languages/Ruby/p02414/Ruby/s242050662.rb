def multMat(x, y)
  ret = Array.new();
  
  x.length.times do |i|
    arr = Array.new();
    y[0].length.times do |j|
      s = 0
      y.length.times do |k|
        s += x[i][k]*y[k][j]
      end
      arr << s
    end
    ret << arr
  end

  return ret
end

n, m, l = gets.split.map(&:to_i)
a = Array.new;
b = Array.new;

n.times do |i|
  a << gets.split.map(&:to_i)
end

m.times do |i|
  b << gets.split.map(&:to_i)
end

c = multMat(a,b)

n.times do |i|
  l.times do |j|
    print c[i][j], (j==l-1?"\n":" ")
  end
end