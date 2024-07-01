n,k = gets.split.map{|x| x.to_i}

counter = 0;

s = gets.chomp
num = Array.new
num = s.split(' ').map{|x| x.to_i}
a = Array.new(num.length, 0)

for i in 1..n do
	for j in 0..(n-1) do
		if num[j] == i then
			a[i-1] += 1
		end
	end
end

for i in 0..(n-1) do
	if a[i] != 0 then
		counter += 1
	end
end

sa = k - counter;

a.delete(0)

a.sort!
puts a
puts a.length

sum = 0
s = 0

if sa < 0 then
	for i in 0..(a.length-1) do
		sum += a[i]
		s += 1

		if s == -sa then
			break
		end
	end
end

puts sum