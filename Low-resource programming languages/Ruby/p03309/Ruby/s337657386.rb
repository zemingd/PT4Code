n,a=gets.to_i,gets.split.map(&:to_i)
n.times do|i|
  a[i]-=i+1
end
puts a.inject(:+)
