x,y = gets.chomp.split(' ').map(&:to_i)
if x==2 || y==2 || x == 12 || x == 11
	puts 'No'
else
	a = [1,3,5,7,8,10,12]
	b = [4,6,9,11]
	if a.include?(x) && a.include?(y)
		puts 'Yes'
	elsif b.include?(x) && b.include?(y)
		puts 'Yes'
	else
		puts 'No'
	end
end