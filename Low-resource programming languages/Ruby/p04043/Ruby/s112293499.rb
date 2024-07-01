info = gets.split.map(&:to_i)

num = info[0]
#len = info[1]

array = []

num.times do
	word = gets.chomp
	array << word
end

array.sort!

s = ""

for word in array do
	s << word
end

print s