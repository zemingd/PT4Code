a = Array.new
3.times do |i|
	a[i] = gets.to_i
end
puts "#{(a[0]+a[1])*a[2]/2}"