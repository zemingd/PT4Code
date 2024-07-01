while n = gets.to_i
	count = 0
	10.times { |a|
		10.times { |b|
			10.times { |c|
				10.times { |d|
					# count += 1 if n == a + b + c + d
					if n == a + b + c + d
						count += 1
						print "#{a} + #{b} + #{c} + #{d}\n"
					end
				}
			}
		}
	}
	puts count
end