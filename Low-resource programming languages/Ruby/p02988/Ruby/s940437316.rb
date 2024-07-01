n = gets.to_i
p = gets.split.map(&:to_i)
cnt = 0
p.each_cons(3) do |x|
  cnt += 1 if x[1] == x.min(2)[1]
end
p cnt
