array = Array.new

while true
  nums = ARGF.gets.split(" ")
  break if nums[1] == "?"
  arr = nums[0].to_i + nums[2].to_i if nums[1] == "+"
  arr = nums[0].to_i - nums[2].to_i if nums[1] == "-"
  arr = nums[0].to_i * nums[2].to_i if nums[1] == "*"
  arr = nums[0].to_i / nums[2].to_i if nums[1] == "/"
  array.push arr
end

array.each { |ar| puts ar }