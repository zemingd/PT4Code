n = gets.to_i
nums = gets.split.map(&:to_i)

dic = {}
nums.each do |num|
  if dic[num] == nil
    dic[num] = true
  else
    puts "NO"
    return
  end
end
puts "YES"