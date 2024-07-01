N,K=gets.split.map(&:to_i)
p=N.times.map{gets.to_i}.sort!
p(0.upto(N-K).map{|i|p[i+K-1]-p[i]}.min)