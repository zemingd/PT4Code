n,k,q = gets.split.map(&:to_i)
a = $<.map{|l|l.to_i}
p = Array.new(n, k-q)
a.each {|ai| p[ai-1]+=1 }
p.each{|pi| puts (pi>0) ? :Yes : :No}