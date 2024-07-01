sent = gets.chomp.downcase
sent_len = sent.length

arr = sent.split("")

alpha = Array.new(26, 0)	# アルファベットの回数を記録する配列

until sent == ""
	for k in 0..sent_len - 1
		case arr[k]
			when "a"
				alpha[0] += 1
			when "b"
				alpha[1] += 1
			when "c"
				alpha[2] += 1
			when "d"
				alpha[3] += 1
			when "e"
				alpha[4] += 1
			when "f"
			alpha[5] += 1
			when "g"
				alpha[6] += 1
			when "h"
				alpha[7] += 1
			when "i"
			alpha[8] += 1
			when "j"
			alpha[9] += 1
			when "k"
				alpha[10] += 1
			when "l"
				alpha[11] += 1
			when "m"
				alpha[12] += 1
			when "n"
				alpha[13] += 1
			when "o"
				alpha[14] += 1
			when "p"
				alpha[15] += 1
			when "q"
				alpha[16] += 1
			when "r"
			alpha[17] += 1
			when "s"
				alpha[18] += 1
			when "t"
				alpha[19] += 1
			when "u"
				alpha[20] += 1
			when "v"
				alpha[21] += 1
			when "w"
				alpha[22] += 1
			when "x"
				alpha[23] += 1
			when "y"
				alpha[24] += 1
			when "z"
				alpha[25] += 1
		end
	end
sent = gets.chomp.downcase
sent_len = sent.length

arr = sent.split("")
end

for s in 0..25
	print((s + 97).chr, "\s:\s", alpha[s], "\n")
end