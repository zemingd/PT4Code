x,n = gets.split(' ').map(&:to_i)
line = gets
ps = !line ? [] : line.split(' ').map(&:to_i)
cand = (0..101).to_a - ps
res=cand.min_by do |i|
  (i-x).abs
end
p res