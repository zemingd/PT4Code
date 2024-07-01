x,_n=gets.split.map(&:to_i)
ary=gets.split.map(&:to_i)
if ary.empty?
  puts x
  exit 0
end
m=ary.max
ans=0
(1..100).each do |i|
  next if ary.include?(i)
  if (x-i).abs<m
    m=(x-i).abs
    ans=i
  end
end
puts ans