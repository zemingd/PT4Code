n = gets.to_i
array = gets.chomp.split(" ").map(&:to_i)
sum = 0

(0...array.length - 2).each do |number|
  local = array.slice(number..number+2)

  if local.last - local[1] > 0 && local[1] - local.first > 0
    sum += 1
  end
end

puts sum