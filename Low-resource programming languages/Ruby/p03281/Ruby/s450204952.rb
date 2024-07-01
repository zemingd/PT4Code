cake = 4
donuts = 7

num = gets.to_i

(num/4).times do |i|
  (num/7).times do |j|
    if (cake * i) + (donuts * j) == num
      puts "Yes"
      return
    else
    end
  end
end
puts "No"