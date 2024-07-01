n,x = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i)
count = 0
a.sort!

n.times do
	break if x < a[0]
x = x - a[0]
a.shift
count+=1
end

puts count