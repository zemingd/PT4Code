N, K = gets.split.map &:to_i
A = gets.split.map &:to_i

Kb = "0"*(40 - K.to_s(2).size) + K.to_s(2)

Ab = A.map{|a| "0"*(40 - a.to_s(2).size) + a.to_s(2)}

count = [0]*40

for a in Ab do
	for b in 0...40 do
		count[b] += 1 if a[b] == '1'
	end
end

best_ans = "0"*40

for i in 0...40 do
	best_ans[i] = '1' if count[i] <= N - count[i]
end

xors = []

for i in 0...40 do
	ans = best_ans

	ans[0, i] = Kb[0, i]

	ans[i] = '0'

	ans_10 = ans.to_i(2)
	if ans_10 <= K then
		val = A.map{|a| a^ans_10 }.inject(0, :+)
		#puts "i: #{i} ans_10: #{ans_10} val: #{val}"
		xors << val
	end
end

p xors.max
