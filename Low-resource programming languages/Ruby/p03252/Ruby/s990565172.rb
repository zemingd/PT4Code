S = gets.chomp
T = gets.chomp

scount, tcount= Hash.new{[]},Hash.new{[]}

S.length.times do |i|
	scount[S[i]] = scount[S[i]].push(i)
end

T.length.times do |i|
	tcount[T[i]] = tcount[T[i]].push(i)
end

if scount.values == tcount.values
	print("Yes\n")
else
	print("No\n")
end