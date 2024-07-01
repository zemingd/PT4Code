N, Y = gets.split.map(&:to_i)
test = -> do
  0.step N do |i|
    y = Y
    m = N - i
    y -= i * 10000
    0.step m do |j|
      yy = y
      k = m - j
      yy -= j * 5000
      yy -= k * 1000
      return "#{i} #{j} #{k}" if yy == 0
    end
  end
  '-1 -1 -1'
end
puts test.()