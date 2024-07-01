n = gets.to_i
array = gets.chomp.split(" ").map(&:to_i)

heigh = array.first
answer = 0

array.each do |number|
  if heigh <= number
    answer += 1 
    heigh = number
  end
end

puts answer