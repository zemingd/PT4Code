n, d = gets.split.map(&:to_i)
x = []
n.times do
  x << gets.split.map(&:to_r)
end

cnt = 0
x.each_with_index do |y, yi|
  x.each_with_index do |z, zi|
    next if yi == zi
    cnt += 1 if ( y.zip(z).map{|(yy,zz)|(yy-zz)**2}.inject(:+) )**(1/2.0) % 1 == 0
  end
end
p cnt/2

