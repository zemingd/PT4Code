n = gets.to_i
ab = $<.map{|s| s.split.map &:to_i }
ab.sort_by!{|a,b|b}
t = 0
puts ab.all?{|a,b|t+=a;t<=b}?"Yes":"No"