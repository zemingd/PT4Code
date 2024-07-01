N, M = gets.strip.split(/\s+/).map(&:to_i)
if N >= M then puts 0; exit end
i = gets.strip.split(/\s+/).map(&:to_i).sort
d = i.each_cons(2).map{|a,b| b-a }
di = d.length.times.sort_by{|i| d[i] }
puts di.take(di.length-N+1).inject(0){|sum,i| sum+d[i] }
