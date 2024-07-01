t = $<.map{|l|l.split.map(&:to_i)}

sum = (t[0][0].to_f + t[0][1].to_f) / 2
puts sum.round