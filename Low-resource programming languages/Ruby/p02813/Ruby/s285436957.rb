n=gets.to_i
v=[*1..n]
array=v.permutation.to_a
array.sort!
first=gets.split.map(&:to_i)
second=gets.split.map(&:to_i)
i_f=array.index(first)
i_s=array.index(second)
p (i_f-i_s).abs