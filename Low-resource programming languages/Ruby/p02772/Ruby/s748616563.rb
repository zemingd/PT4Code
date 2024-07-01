_= gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)

approved_flag = true

g_nums = []

nums.each do |i|
  g_nums << i if i % 2 == 0
end

if g_nums.empty?
  puts "APPROVED"
  else
  g_nums.each do |i|
    if i % 3 == 0 || i % 5 == 0
      next
    else
      approved_flag = false
    end
  end

  if approved_flag == true
    puts  "APPROVED"
  else
    puts  "DENIED"
  end
end
