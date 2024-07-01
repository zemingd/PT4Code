def hoge() gets.split.map(&:to_i) end
n = gets.to_i; t,a = hoge(); h = hoge()

d = p = 1000000
(1..n).to_a.each do |i|
  fuga = (a-(t-h[i-1]*0.006)).abs
  if fuga < d then d = fuga; p = i end
end

p p