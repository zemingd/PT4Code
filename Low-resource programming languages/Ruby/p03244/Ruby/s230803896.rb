n = gets.to_i
arr=gets.split(' ').map(&:to_i)

e=Hash.new(0)
o=Hash.new(0)
arr.each_with_index do |a,i|
  ee[a] += 1 if i%2==0
  oo[a] += 1 if i%2==1
end
ee=e.sort_by {|_,v| -v}
oo=o.sort_by {|_,v| -v}

ans = if ee.size != oo.size
  n - ee[0].last - oo[0].last
else
  [
    n - ee[0].last - (oo.size > 1 ? oo[1].last : 0),
    n - (ee.size > 1 ? ee[1].last : 0 ) - oo[0].last
  ].min
end
puts ans