n=gets.to_i
xs=gets.split.map(&:to_i)
n.times do |i|
  newxs=xs.select.with_index{|v,j| v if i!=j}.sort
  puts newxs[n/2-1]
end
