n=gets.to_i
puts gets.each_char.map{|c|n.times{c.succ!};c[-1]}*""