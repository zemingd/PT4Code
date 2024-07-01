nums = gets.chomp.split('').map(&:to_i)

cache = -1
flg = false
nums.each do |num|
  flg = true if cache == num
  cache = num
end

if flg
  puts "Bad"
else
  puts "Good"
end