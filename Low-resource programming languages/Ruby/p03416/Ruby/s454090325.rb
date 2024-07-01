a,b=gets.split.map &:to_i
p (b-a+1).times.map{|n|(n+a).to_s}.select{|s|s==s.reverse}.size