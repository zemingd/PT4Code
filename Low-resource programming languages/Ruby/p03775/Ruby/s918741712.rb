n = gets.to_i
puts (1..(n**0.5).to_i).select{|a| n%a==0}.map{|a| (n / a).to_s.size}.min