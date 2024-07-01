while n = gets
	n = n.to_i
	count = 0
	if n <= (9 * 4)
		10.times { |a|
			10.times { |b|
				10.times { |c|
					10.times { |d|
						count += 1 if n == a + b + c + d
					}
				}
			}
		}
	end
	puts count
end