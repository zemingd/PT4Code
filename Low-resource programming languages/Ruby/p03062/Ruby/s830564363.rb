n = gets.to_i
a = gets.split.map(&:to_i)
if a.select{|a|a<0}.size.odd? # 負の数が奇数個
  p a.map(&:abs).inject(&:+) - a.map(&:abs).min*2
else
  p a.map(&:abs).inject(&:+)
end
