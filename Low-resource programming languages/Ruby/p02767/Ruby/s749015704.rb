N=gets.chomp.to_i
X=gets.chomp.split.map(&:to_i)

min=X.min
max=X.max
p=(min+max)/2
a=1000000000000
(0..100).each do |p|
  b=0
  X.each do |i|
    b+=(i-p)*(i-p)
  end
  if b<a then
    a=b
  end
end
puts a