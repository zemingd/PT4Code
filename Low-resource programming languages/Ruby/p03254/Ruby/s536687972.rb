n, x = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i).sort
count = 0
(0...n-1).each do |i|
  if x >= ary[i]
    x-=ary[i]
    count+=1
  end
end
count+=1 if ary[-1] == x
puts count
