n = gets.to_i
ps = gets.split.map(&:to_i)

cnt = 0
(n-2).times do |i|
  mid = [ps[i], ps[i+1], ps[i+2]].sort[1]
  cnt += 1 if mid == ps[i+1]
end

p cnt

