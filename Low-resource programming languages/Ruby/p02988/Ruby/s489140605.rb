i = gets.to_i
h = gets.split.map(&:to_i)

list =[]

h.each do |t|
	list << t
end


count = 0
huf = []
for x in 0..(i - 3) do 
	
	huf << list[x]
	huf << list[x + 1]
	huf << list[x + 2]
	p huf
	huf = huf.sort
	if list[x + 1] == huf[1]
		count += 1
	end
	huf.clear
end

puts count



