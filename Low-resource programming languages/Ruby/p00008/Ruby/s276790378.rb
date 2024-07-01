class FindAnswer
def makeDatabase
	database = Array.new(19,0)
	10.times { |a|
		10.times { |b|
			10.times { |c|
				10.times { |d|
				e =  a+b+c+d
				break if e > 18
				database[e] += 1
				}
			}
		}
	}
	return database
end

def orORor(num)
	num > 18 ? 36 - num : num
end

end

aa = FindAnswer.new
table = aa.makeDatabase

while input = STDIN.gets
	input = input.to_i
	if input > 36
		puts 0
		else
		get = aa.orORor(input)
		puts table[get]
	end
end