gets.to_i.times{a,b,c,d,e,f,g,h=gets.split.map &:to_f
puts [1,[i=(b-d)*(e-g),j=(f-h)*(a-c)].max.abs].any?{|m|(i-j).abs<=1e-9*m}?"YES":"NO"}