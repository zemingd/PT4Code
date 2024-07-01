n,k = gets.split.map(&:to_i)
d = gets.split.map(&:to_i)
av = 10.times.reject { |v| d.include? v }.sort
price = n.to_s.chars.map(&:to_i)
pay = Array.new(price.size,av.last)
if price.join.to_i > pay.join.to_i
    price.unshift 0
    pay.unshift 0
end

price.size.times do |i|
   av.find do |v| 
     pay[i] = v
     pay.join.to_i(10) >= n
   end
end
puts pay.join.to_i(10)