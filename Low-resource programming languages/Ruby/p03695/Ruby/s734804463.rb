n=gets.to_i
r=[]
(0..8).each{|e|r[e]=0}
gets.split.map(&:to_i).each{|a| r[a/400]+=1}
x=0
for i in (0...8)
	x+=1 if r[i]>0
end
puts "#{x} #{x+r[8]}"
