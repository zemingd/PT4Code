a = gets.split.map(&:to_i).sort
until (a[0]==0 && a[1]==0)
	puts "#{a[0]} #{a[1]}"
	a = gets.split.map(&:to_i).sort
end