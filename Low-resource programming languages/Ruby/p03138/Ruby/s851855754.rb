a,b = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)

cnt = 0
max = 0
0..b.times.each do |bb|
  c.each do |i|
    cnt += bb^i
    if max < cnt
      max = cnt
    end
  end
  cnt = 0
end
puts max