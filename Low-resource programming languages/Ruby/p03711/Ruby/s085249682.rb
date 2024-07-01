x,y=gets.split.map(&:to_i)
a=[4,6,9,11]
b=[2]
c=[1,3,5,7,8,10,12]
flag=false
if a.include?(x) and a.include?(y)
	flag=true
elsif b.include?(x) and b.include?(y)
	flag=true
elsif c.include?(x) and c.include?(y)
	flag=true
end

puts flag ? "Yes":"No"