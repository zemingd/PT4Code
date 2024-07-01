_n = gets.to_i
ar = gets.split.map(&:to_i)
cnt = 0

ar.each_cons(3) do |i|
  cnt = cnt.succ if i[1] == i.sort[1]
end

p cnt