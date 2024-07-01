x, y, z, k = gets.split.map(&:to_i)

a = gets.split.map(&:to_i).sort!.reverse!
b = gets.split.map(&:to_i).sort!.reverse!
c = gets.split.map(&:to_i).sort!.reverse!

buf = []
x.times do |ix|
  y.times do |iy|
    break unless ix * iy < k
    z.times do |iz|
      break unless ix * iy * iz < k
      buf << a[ix] + b[iy] + c[iz]
    end
  end
end

buf.sort!.reverse!

k.times do |i|
  p buf[i]
end
