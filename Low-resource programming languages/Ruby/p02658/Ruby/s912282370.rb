INF = 10 ** 18
n = gets.to_i
nums = gets.split.map(&:to_i)
if nums.any? { |num| num == 0 }
  puts 0
  exit
end
tmp = nums.shift
nums.each do |num|
  tmp *= num
  if tmp > INF
    puts -1
    exit
  end
end
puts tmp
