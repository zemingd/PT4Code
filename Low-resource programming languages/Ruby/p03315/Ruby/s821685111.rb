S=gets.strip
a=0
S.chars do |s|
	if s=='+'
      a+=1
    else
      a-=1
    end
end
puts a
