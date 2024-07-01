n = gets.chomp.to_i
nums = gets.split.map(&:to_i).sort
l = nums[(n/2 - 1)]
g = nums[(n/2)]
count = 0
stop = 0
while stop == 0 && g >= l
  if nums.select{|p| p < g}.count == (n / 2)
    count += 1
  else
    stop += 1
  end
  g -= 1
end
puts count