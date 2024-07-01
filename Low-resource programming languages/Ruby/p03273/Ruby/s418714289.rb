# https://atcoder.jp/contests/abc107/tasks/abc107_b
# B - Grid Compression

N, M = gets.split(" ").map{|d|d.to_i}
A = (0...N).map{gets.strip.split("")}

ignorex = []
ignorey = []


A.size.times{|y|
	if(A[y].all?{|d|d == "."}  )
		ignorey.push(y)
	end
}

A.transpose.size.times{|x|
	if(A.transpose[x].all?{|d|d == "."}  )
		ignorex.push(x)
	end
}

out = ""
A.size.times{|y|
	A.transpose.size.times{|x|
		if(!ignorey.include?(y) && !ignorex.include?(x))
			out += "#{A[y][x]}"
		end
	}
	if(!ignorey.include?(y))
		out += "\n"
	end
}
puts out
