ml,l = 0,0
gets.chars do |c|
  if c !~ /[ATGC]/
    ml = [ml, l].max
    l = 0
  else
	l+=1
  end
end
p [ml, l].max