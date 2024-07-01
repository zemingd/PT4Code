_n = gets.strip.to_i
arrays = gets.strip.split.map(&:to_i)

even = arrays.select(&:even?)

flag = true
even.each do |number|
  unless (number % 3 == 0 || number % 5 == 0)
  	flag = false
    break
  end
end

if flag
  puts 'APPROVED'
else
  puts 'DENIED'
end