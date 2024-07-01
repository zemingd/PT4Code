a,b=gets.split.map(&:to_i)
puts (1000.times.find{|x|x=x.succ; (x*0.08).to_i == a && (x*0.10).to_i == b} || -2)+1
