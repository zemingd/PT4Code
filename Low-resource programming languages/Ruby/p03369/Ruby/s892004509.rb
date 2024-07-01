s=gets.to_i.split('')
ramen=700
topping=0
s.each do |x|
	topping += 1 if x=='o'
end
puts ramen + topping*100