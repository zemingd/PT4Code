def punch(n)
	0.upto(2) do |i|
		0.upto(2) do |j|
			if $a[i][j] == n then
				$a[i][j] = 0
			end
		end
	end
end

def bingo?()
	0.upto(2) do |i|
		if $a[i][0]==0 && $a[i][1]==0 && $a[i][2]==0 then return true end
		if $a[0][i]==0 && $a[1][i]==0 && $a[2][i]==0 then return true end
	end
	if $a[0][0]==0 && $a[1][1]==0 && $a[2][2]==0 then return true end
	if $a[0][2]==0 && $a[1][1]==0 && $a[2][0]==0 then return true end
end

$a = []
3.times do
	$a << gets.chomp.split(" ").map{|e|e.to_i}
end

gets.chomp.to_i.times do
	punch(gets.chomp.to_i)
end

if bingo? then
	print("Yes")
else
	print("No")
end