all_num = gets
nums = gets.split
colors = {}

one_p = false
nums.each do |num|
  if num.to_i > 3200
    one_p = true
  else
    colors.store(num.to_i/400, 'a')
  end
end

max_num = one_p ? colors.keys.length + 1 : colors.keys.length
# hashの個数
puts "#{colors.keys.length} #{max_num}"