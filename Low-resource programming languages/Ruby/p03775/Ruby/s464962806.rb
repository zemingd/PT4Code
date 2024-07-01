n = gets.to_i
p 1.upto((n ** 0.5).floor).select { |e| n % e == 0 }.map {|e| [e, n / e].map {|x| x.to_s.length}.max if n % e == 0}.min