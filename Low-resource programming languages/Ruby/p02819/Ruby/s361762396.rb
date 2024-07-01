require 'prime'

x = gets.to_i
number = *1..1000000

number.map do |n|
  if Prime.prime?(n) && n >= x
    puts n
    break
  end
end

