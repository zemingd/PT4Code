n = gets.to_i
nums = gets.split.map(&:to_i)

dic = {}
flag = true
nums.each do |num|
  if dic[num] == nil
    dic[num] = true
  else
    flag = false
  end
end
if flag
  puts "YES"
else
  puts "NO"
end