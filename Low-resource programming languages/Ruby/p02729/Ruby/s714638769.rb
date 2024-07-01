n, m = gets.split(' ').map!(&:to_i)

cnt = 0
e = [2] * n
o = [1] * m
(e + o).combination(2).each do |arr|
  cnt += 1 if arr.all?(&:odd?) || arr.all?(&:even?)
end

puts cnt
