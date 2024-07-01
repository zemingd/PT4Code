
n, m=gets.split.map &:to_i
arr=[]
m.times do |i|
  arr << gets.split.map(&:to_i) +[i]
end
puts arr.group_by{|a|
  a[0]
}.map{|a|
  {a.first => a[1].sort.map.with_index{|aa,ii|
    aa+ [ii+1]}
  }
}.map{|a|
  a.values.first
}.flatten(1).sort_by{|a|a[2]}.map{|a|
  sprintf('%06d%06d',a[0],a[3])
}.join("\n")

  
