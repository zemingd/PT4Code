n, x = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i).sort
count = 0
ary.each do |i|
  if x >= i
    x-=i
    count+=1
  else
    x-=1
  end
end
count-=1 if x>0
puts count 