n = gets.to_i
pp = gets.split.map(&:to_i)

hoge = []
min = Float::INFINITY
pp.each do |num|
  min = [min, num].min
  hoge << min
end
res = 0
n.times do |i|
  if hoge[i] >= pp[i]
    res += 1
  end
end

p res