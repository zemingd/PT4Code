num = gets.split(" ").map(&:to_i)
if num[0] <= num[2] && num[1] >= num[2] then
  p "Yes"
else
  p "No"
end
