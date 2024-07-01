h,w=gets.chomp.split(" ").map { |e| e.to_i  }
a=h.times.map { gets.chomp.split("")  }


x=Array.new(w,".")

a.delete(x)

newh = a.length

xx=Array.new(newh,".")

newa = Array.new(w).map { Array.new(newh)}

w.times do |i|
  newh.times do |j|
    newa[i][j] = a[j][i]
  end
end
newa.delete(xx)

neww = newa.length

aa = Array.new(newh).map { Array.new(neww)}



neww.times do |i|
  newh.times do |j|
    aa[j][i] = newa[i][j]
  end
end



newh.times do |i|
  print aa[i].join
  puts
end