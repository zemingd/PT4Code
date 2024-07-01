n,m=gets.split.map(&:to_i)
xDatas=gets.split.map(&:to_i).sort
moveCount = 0
if n>=m
  puts 0
elsif n < 2
  moveCount = xDatas.max - xDatas.min
  puts moveCount < 0 ? 0 : moveCount
else
  diffXes=(m-1).times.map{|index|(xDatas[index+1] - xDatas[index]).abs}.sort
  puts diffXes[0..n].inject(:+)
end