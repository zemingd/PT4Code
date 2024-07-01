times = 5.times.map{ STDIN.gets.strip.to_i }
puts times.map{|i| (i+9)/10*10 }.inject(&:+) - 10 + times.map{|i| i%10==0 ? 10 : i%10 }.min
