N,Y = gets.split.map(&:to_i)
a0,b0,c0 = [Y / 10000, Y % 10000 / 5000, Y % 5000 / 1000]
a = b = c = n = 0
(0..a0).each do |i|
   a,b1 = a0-i,b0+i*2
   (0..b1).each do |j|
      b,c = b1-j,c0+j*5
      n = a+b+c
      break if n >= N
   end
   break if n == N
end
a=b=c=-1 if n != N
puts '%d %d %d' % [a,b,c]
