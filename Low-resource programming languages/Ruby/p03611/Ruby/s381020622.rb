gets
a=gets.split.map(&:to_i).group_by(&:itself)
puts a.map{|k, v|
    x=a[k-1] ? a[k-1].size : 0
    y=v.size
    z=a[k+1] ? a[k+1].size : 0
    x+y+z
}.max
