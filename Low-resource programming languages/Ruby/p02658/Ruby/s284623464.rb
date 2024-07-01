n = gets.to_i
nums = gets.split(" ").map(&:to_i)
if nums.include?(0)
  puts 0
  exit
end
sum = 1
nums.each do |n|
  sum = sum * n
  if sum > 10 ** 18
    puts -1
    exit
  end
end
puts sum