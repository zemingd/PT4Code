a = gets.split(' ').map(&:to_i)
	puts a[0].to_f / a[1] <= a[2] ? 'Yes' : 'No'