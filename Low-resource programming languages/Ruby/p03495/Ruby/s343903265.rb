N,K = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i).sort
cnt_same = Array.new(N,0)
as.each do |a|
  cnt_same[a-1] += 1
end
cnt_same.delete(0)
cnt_same.sort!.reverse!
if cnt_same.size > K
  ans = cnt_same[K..-1].inject(:+)
else
  ans = 0
end
puts ans
