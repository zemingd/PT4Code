def search_pattern( n )
	sum = 0
	0.upto( 9 ){|a|
		0.upto( 9 ){|b|
			0.upto( 9 ){|c|
				0.upto( 9 ){|d|
					sum += 1 if a + b + c + d == n
				}
			}
		}
	}
	#print "sum #{sum}\n"
	return sum
end

answer = Array.new
while line = $stdin.gets
	n = line.to_i
	answer << search_pattern( n )
end
answer.each{ |a|
	puts a
}
