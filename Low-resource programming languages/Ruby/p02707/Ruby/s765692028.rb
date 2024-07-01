n = gets.to_i
nums = gets.split(' ').map(&:to_i)

group =  nums.group_by { |n| n } 

1.upto(n) do |i|
  if group[i].nil?
    puts 0
  else
    puts group[i].size
  end
end
