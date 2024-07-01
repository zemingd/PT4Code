N = gets.to_i

data = gets.split.map(&:to_i)

swap_cnt = 0

for i in 0..N-1
(N-1).downto(i+1)do|j|
if data[j] < data[j-1]
work = data[j]
data[j] = data[j-1]
data[j-1] = work
swap_cnt +=1

end

end

end
puts data.join(" ")
p swap_cnt