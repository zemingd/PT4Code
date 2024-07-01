n,m=gets.split.map(&:to_i)
if m-n >0
  puts gets.split.map(&:to_i).sort.each_cons(2).map{|e| (e[0].abs-e[1].abs).abs}.sort.take(m-n).inject(:+)
else
  gets
  puts 0
end