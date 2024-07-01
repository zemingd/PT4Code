# 「先手と後手が最善を尽くす」とあるけど、実は最善も最悪も存在しない
# 先手と後手がどのような手を出しても、勝者は変わらない……と、予想
# 以上より、両者とも「取れる最初の文字を取り去る」

str = gets.chomp

c = 0
fl = 0
while true do
	
	0.upto(str.length - 3) do |i|
		if str[i] != str[i+2]
			str.slice!(i+1)
			c += 1
#			puts str
			break
		end
		
		if i == str.length - 3
			# 文字を削除できない
			fl = 1
			break
		end
	end
	
	break if fl == 1
	break if str.length == 2
end

if c % 2 == 0
	puts "Second"
else
	puts "First"
end
