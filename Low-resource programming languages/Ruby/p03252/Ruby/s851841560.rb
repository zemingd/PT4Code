s = gets.chomp.split("")
t = gets.chomp.split("")

S = []
T = []

s.uniq.each do |i|
	S << s.count(i)
end

t.uniq.each do |i|
	T << t.count(i)
end

S.sort!
T.sort!

if S == T
	puts "Yes"
else
	puts "No"
end