n,c = gets.split.map(&:to_i)

tl = Array.new(c){ Array.new(2*(10**5)+10,0) }
sum = Array.new(2*(10**5)+10,0)
n.times do
	s,t,ci = gets.split.map(&:to_i)
	tl[ci-1][s*2-1] += 1
	tl[ci-1][t*2] -= 1
end
max = 0
rec = 0

c.times do |i|
  tmp = 0
	(2*(10**5)+9).times do |j|
    tmp += tl[i][j]
		sum[j] += 1 if tmp > 0
	end
  #p tl[i][0..31]
  #p sum[0..30]
end

(2*(10**5)+10).times do |i|
  max = sum[i] if max < sum[i]
end
puts max
