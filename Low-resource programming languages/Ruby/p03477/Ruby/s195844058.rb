A, B, C, D = gets.chomp.split.map(&:to_i)

left = A + B
right = C + D

ans = if left > right
		'Left'
	  elsif left == right
		'Balanced'
	  else
		'Right'
	  end
puts ans