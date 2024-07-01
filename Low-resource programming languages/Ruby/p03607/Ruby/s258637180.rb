n = gets.to_i
sum = 1
paper = [gets.to_i]

(n-1).times do
	a_i = gets.to_i

	headIndex = 0
	tailIndex = sum - 1

	loop do
		centerIndex = (headIndex+tailIndex)/2
#== debug
#		p "centerIndex = #{centerIndex}"
#		p "paper = #{paper}"
#		p "sum = #{sum}"
#==
		if paper[centerIndex] == a_i then
			paper.delete_at(centerIndex)
			sum -= 1
			break
		elsif  paper[centerIndex] < a_i then
			if centerIndex == headIndex then
				if paper[centerIndex+1] == a_i then
					paper.delete_at(centerIndex+1)
					sum -= 1
					break
				else
					paper.insert(centerIndex+1, a_i)
					sum += 1
				end
			break
			else
				headIndex = centerIndex
			end
		else
			tailIndex = centerIndex
		end

		if headIndex == tailIndex then
			paper.insert(headIndex, a_i)
			sum += 1
			break
		end
	end
end

p sum