n = gets.chomp.to_i
nums = gets.chomp.split(" ").map(&:to_i)
flag = true

(0...n).each do |i|
  if nums[i].even?
    if nums[i] % 3 == 0 || nums[i] % 5 == 0
      flag = true
    else
      flag = false
      break
    end
  end
end

if flag
  puts 'APPROVED'
else
  puts 'DENIED'
end