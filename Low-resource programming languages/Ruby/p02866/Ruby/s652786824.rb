require 'pp'

n = gets.to_i
d = gets.split.tap{|x|
  if x[0] != '0'
    p 0
    exit
  end
  }[1..-1].map.with_index(2){|x,i|[x.to_i,i]} # 距離、番号




x = d.map(&:first).group_by(&:itself).map{|k,v|[k,v.size]}.sort_by{|xx|xx[0]}

ans = 1

(x.size-1).times do |i|
  ans *= x[i][1] ** x[i+1][1]
end
p ans

# 2 0 24
