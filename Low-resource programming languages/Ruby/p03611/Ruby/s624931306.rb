N = gets.to_i
a = gets.split.map(&:to_i)

nums = []
a.each do |x|
  nums << x
  nums << x - 1
  nums << x + 1
end

puts nums.group_by { |x| x }
         .map { |k, v| v.size }
         .max