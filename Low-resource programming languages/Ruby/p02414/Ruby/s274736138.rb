n, m, l = gets.chop.split(' ').map(&:to_i)

a = Array.new(n).map{Array.new(m, 0)}
b = Array.new(m).map{Array.new(l, 0)}
c = Array.new(n).map{Array.new(l, 0)}

0.step n-1 do |ni|
  row = gets.chop.split(' ').map(&:to_i)
  0.step m-1 do |mi|
    a[ni][mi] = row[mi]
  end
end

0.step m-1 do |mi|
  row = gets.chop.split(' ').map(&:to_i)
  0.step l-1 do |li|
    b[mi][li] = row[li]
  end
end

0.step n-1 do |i|
  0.step l-1 do |j|
    0.step m - 1 do |k|
      c[i][j] += a[i][k] * b[k][j]
    end
  end
end

c.each do |row|
  row.each_with_index do |num,index|
    print num
    if index != l-1
      print ' '
    end
  end
  puts ''
end

