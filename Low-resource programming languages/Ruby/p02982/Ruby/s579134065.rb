n, d = gets.split.map(&:to_i)
x = readlines.map {|l| l.split.map(&:to_i) }
c = 0

x.each_with_index do |y, i|
  break if i == (x.length - 1)
  z = y.zip(x[i+1])
  c += 1 if Math.sqrt(z.inject(0) {|r,i| r += i.first - i.last; r }.abs).to_s.match(/\.0$/)
end

puts c