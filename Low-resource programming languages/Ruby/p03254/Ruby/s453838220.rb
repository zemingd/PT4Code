n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
ans = 0
a.each do |i|{
  while x>=0
	a.inject(x, :-)
    ans+=1
  end
 end
  
puts ans
  