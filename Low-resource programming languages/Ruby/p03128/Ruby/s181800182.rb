N, M = gets.split.map &:to_i
A = gets.split.map &:to_i

TBL = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]
B = A.delete_if{|a|
	cost = TBL[a]
	a < A.select{|aa| TBL[aa] == cost }.max
}.sort_by{|b| TBL[b] }

def f(n, accu = [])
	if n == 0
		puts accu.sort.reverse*""
		exit
	elsif n < 0
		return
	else
		B.each{|b|
			f(n - TBL[b], accu + [b])
		}
	end
end

f(N)
