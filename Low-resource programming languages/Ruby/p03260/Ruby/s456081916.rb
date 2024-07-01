w,c=gets.split(" "),"No"
(1..3).each{|e|c="Yes" if (w[0].to_i*w[1].to_i*e)%2==1}
puts c