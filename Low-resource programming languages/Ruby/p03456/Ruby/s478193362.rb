a, b = gets.chomp.split(" ")
sum = (a + b).to_i
answer = "No"

(1..10000).each do |number|
  if number ** 2 == sum
    answer = "Yes"
  end
end

puts answer