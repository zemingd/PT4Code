x,y,z,k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)

tmp = []

as.each do |a|
  bs.each do |b|
    tmp << a+b
  end
end

tmp.sort!.reverse!
tmp = tmp.first(k)
cs.sort!.reverse!

tmp2 = []
cs.each do |c|
  tmp.each do |t|
    tmp2 << c + t
  end
end

tmp2.sort!.reverse!

k.times do |i|
  puts tmp2[i]
end
