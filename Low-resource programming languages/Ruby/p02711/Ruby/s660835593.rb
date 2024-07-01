input = gets.to_i

last = 0
input.times do |num|
  num += 1
  
  unless num % 3 == 0 || num % 5 == 0
    last += num
  end
end 

puts last