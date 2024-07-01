n,k = gets.split.map &:to_i
s = gets.chomp

ans = []
# 10 ver 01 ver
ss = s.gsub(/1+$/){|a|?0 * a.size}.scan(/^0+|1+0+/)
if ss.size <= k
  p s.size
  exit
  else
  ans << ss.each_cons(k).to_a.map{|x|x.map(&:size).inject(&:+)}.max
end

ss = s.gsub(/^1+/){|a|?0 * a.size}.scan(/0+1+|0+$/)#.each_cons(k).to_a#.map{|x|x.map(&:size)}#.inject(&:+)}
if ss.size <= k
  p s.size
  exit
  else
  ans << ss.each_cons(k).to_a.map{|x|x.map(&:size).inject(&:+)}.max
end

p ans.max
