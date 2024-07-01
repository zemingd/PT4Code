g = STDIN.read

t = [*?a..?z].map{|alpha| [alpha, g.count(alpha) + g.count(alpha.swapcase)]}
t.each{|x,y| puts x + ' : ' + y}