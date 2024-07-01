mt = []
10.times { |n| mt << gets.to_i }
mt.sort!.reverse!
3.times { |n| puts mt[n] }