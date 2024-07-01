times = []
5.times { times << gets.to_i}
ceils = times.map { |time| time.ceil(-1) }
lastdif = [times, ceils].transpose.map{|a| a.inject(:-) }.min
ans = ceils.inject(:+) + lastdif
puts ans