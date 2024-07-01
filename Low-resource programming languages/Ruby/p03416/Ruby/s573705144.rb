a,b=gets.split.map(&:to_i)
puts [*a..b].reject{|n|n.to_s!=n.to_s.reverse}.size