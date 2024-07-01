line = gets
#sortメソッドだとちょっと寂しいので・・・ひとまず基本選択法で
ary = line.split(" ").map{|x| x.to_i }
for i in 0..ary.size-1
	for j in i..ary.size-1
		if ary[i] > ary[j]
			_work = ary[j]
			ary[j] = ary[i]
			ary[i] = _work
		end
	end
end
out_work = ""
ary.each {|x| out_work = out_work + x.to_s + " "}
out_work.chop!
puts out_work