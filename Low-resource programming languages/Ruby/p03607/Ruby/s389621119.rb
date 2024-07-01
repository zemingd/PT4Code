require 'set'

nums = Set.new
n = gets.to_i

n.times do
  num = gets.to_i
  if nums.include?(num)
    nums.delete(num)
  else
    nums.add(num)
  end
end

puts nums.size

