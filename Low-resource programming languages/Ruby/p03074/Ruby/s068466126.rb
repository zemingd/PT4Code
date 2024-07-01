n,k = gets.split.map &:to_i
s = gets.chomp

# 10 ver
p [s.gsub(/1+$/){|a|a.gsub('1','0')}.scan(/^0+|1+0+/).each_cons(k).map{|x|x.map(&:size).inject(&:+)}.max,
   s.gsub(/^1+/){|a|a.gsub('1','0')}.scan(/0+1+|0+$/).each_cons(k).map{|x|x.map(&:size).inject(&:+)}.max].max
