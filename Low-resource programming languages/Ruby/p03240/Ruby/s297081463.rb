n = gets.to_i
c = Array.new(n) { Array.new(3) }
(0..n-1).each do |i|
  x, y, h = gets.split.map(&:to_i)
  c[i][0] = x
  c[i][1] = y
  c[i][2] = h
end

tx = 0
ty = 0
th = 0
h = 0

for x in (0..100) do
  for y in (0..100) do
    h = 0
    (0..(c.length-1)).each do |i|
      if (c[i][2] > 0)
        if h == 0
          h = (x-c[i][0]).abs + (y-c[i][1]).abs + c[i][2]
        else
          if h != (x-c[i][0]).abs + (y-c[i][1]).abs + c[i][2]
            h = 0
            break
          end
        end
      end
    end
    if h != 0
      tx = x
      ty = y
      th = h
      break
    end
  end
end

puts tx.to_s + " " + ty.to_s + " " + th.to_s

