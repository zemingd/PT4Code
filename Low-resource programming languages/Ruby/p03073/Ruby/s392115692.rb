S = gets.chomp

ref = '0'
def count(init)
	count = 0
	ref = init
	S.each_char do |char|
		if ref == char
			count += 1
			ref = char == '0'? '1' : '0'
		else
			ref = char
		end
	end
	count
end

countA = count('0')
countB = count('1')

if countA < countB
	puts countA
else
	puts countB
end
