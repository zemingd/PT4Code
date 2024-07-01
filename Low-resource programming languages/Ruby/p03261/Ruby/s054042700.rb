num = gets.to_i
flag = true
arr = Array.new
num.times do |i|
  arr.push(gets)
  if (arr[i][0] != arr[i-1][-2] && i >= 1) then
    flag = false
  end
end
if (arr.size == arr.uniq.size && flag == true) then
  puts "Yes"
else puts "No"
end
