n,k = gets.split.map(&:to_i)
d = gets.split.map(&:to_i).sort
av = 10.times.reject { |v| d.include? v }
price = ("0%d" % n).chars.map(&:to_i)
pay = Array.new(price.size,av.last)

price.size.times do |i|
   av.find do |v| 
     pay[i] = v
     pay.join.to_i(10) >= n
   end
end
puts pay.join.to_i(10)