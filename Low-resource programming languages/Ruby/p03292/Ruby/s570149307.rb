a=gets.split(' ').map(&:to_i)
max=-9999
min=9999
a.each do|num|
	max=num if(max<num)
	min=num if(min>num)
end
puts max-min