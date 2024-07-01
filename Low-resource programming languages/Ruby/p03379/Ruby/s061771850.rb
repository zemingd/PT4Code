N = gets.to_i
xs = gets.split.map(&:to_i)
ys = []
xs.each_with_index{|x, i| ys << [x, i]}
ys.sort_by!{|y| y[0]}
res = []
N.times{|i|
  temp = ys.clone
  temp.delete_at(i)
  res << [temp[N/2-1][0], ys[i][1]]  
}
res.sort_by!{|r| r[1]}
res.each{|r|
  puts r[0]
}
