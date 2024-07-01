while n = gets.to_i do
	r = 0
	10.times{ |a|
		10.times{ |b|
			10.times{ |c|
				10.times{ |d|
					if (a + b + c + d == n) then
						r += 1
					end
				}
			}
		}
	}
	puts r
end