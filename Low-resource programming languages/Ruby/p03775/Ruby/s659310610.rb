n=gets.to_i
p (1..n**0.5).map{|a| n%a>0 ? n : (n/a).to_s.size}.min