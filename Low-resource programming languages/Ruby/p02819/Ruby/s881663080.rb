require "prime"
 
X = gets.to_i
 
number = *1..100000
number.map do |n|
  if Prime.prime?(n) && n >= X
    puts n
    break
  end
end