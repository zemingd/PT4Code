h,n=gets.split.map(&:to_i)
ary=gets.split.map(&:to_i)
n.times{|i|h-=ary[i]}
puts h<=0 ? 'Yes' : 'No'