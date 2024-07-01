A, B, C, D = gets.chomp.split.map(&:to_i)

left = A + B
right = C + D

ans = if left > right
		'left'
	  elsif left == right
		'balanced'
	  else
		'right'
	  end
puts ans