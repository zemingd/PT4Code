s = gets.chomp
t = gets.chomp

w = Hash.new(0)

s.size.times do |i|
	w[s[i]] += 1
end

t.size.times do |i|
	w[t[i]] -= 1
end

b = []
w.each do |key, value|
    b << value
end

b.delete(0)
b.sort!
while !b.empty?
	if b[0] + b.last == 0
		b.delete_at(0)
		b.delete_at(-1)
	else
		puts "No"
		exit
	end
end

puts "Yes"