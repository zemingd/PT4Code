array = gets.chomp.split(" ").map(&:to_i)

array.delete_if do |number|
  number % 2 == 1
end

array.empty? ? answer = "Yes" : answer = "No"

puts answer
