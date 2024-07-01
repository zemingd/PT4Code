a,b,c=gets.split(' ').map{|i| i.to_i}
x=c-(a-b)
x=0 if x<0
puts "#{x}"
