n = gets.to_i

a = gets.split.map(&:to_i)

a.each do |number|
  if number.even?
  	unless number % 3 == 0 || number % 5 == 0
  	  puts 'DENIED'
  	  return
  	end
  end
end

puts 'APPROVED'