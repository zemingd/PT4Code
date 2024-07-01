num = gets.split.join("").to_i
flag = false
(1..320).each do |i|
  if i**2 == num
    flag = true
    break
  end
end
puts flag ? "Yes" : "No"
