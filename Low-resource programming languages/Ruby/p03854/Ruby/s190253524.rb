s = gets.chomp
s.reverse!

# i = 0
# while i < s.length do
# 	p i
# 	if s[i,i+5] == 'maerd' then
# 		i += 5
# 	elsif s[i, i+7] == 'remaerd' then
# 		i+= 7
# 	elsif s[i, i+5] == 'esare' then
# 		i += 5
# 	elsif s[i,i+6] == 'resare' then
# 		i += 6
# 	else
# 		print "NO", "\n"
# 		exit 0
# 	end
# end

s.delete!('maerd')
s.delete!('remaerd')
s.delete!('esare')
s.delete!('resare')

if s.empty?
	print "YES", "\n"
else
	print "NO", "\n"
end
