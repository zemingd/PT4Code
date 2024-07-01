WHITE = '.'
BLACK = '#'

N = gets.to_i

Q = gets.to_s
arry = Q.split('')

blacks = Q.count(BLACK)

count = 0

# 全部黒パターンの要変更数
cumulative = [blacks]

i = 0

while i < N-1 do
	if arry[i] == "#"  &&  arry[i+1] =="."
		count += 1
		arry[i+1] = "#"
	end
	i += 1
end

cumulative << count

puts cumulative.min