while n = gets.to_i
	count = 0
	if n <= (9 * 4)
		10.times { |a|
			10.times { |b|
				10.times { |c|
					10.times { |d|
						if n == a + b + c + d
							count += 1
						elsif n < a + b + c + d
							break
						end
					}
				}
			}
		}
	end
	puts count
end