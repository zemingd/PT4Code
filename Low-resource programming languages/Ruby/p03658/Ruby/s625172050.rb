n, k = gets.split(' ').map{|i| i.to_i}
l = gets.split(' ').map{|j| j.to_i}.sort{|a, b| b <=> a }

ans = l.take(k).inject(&:+)

p ans