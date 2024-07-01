n = gets.chomp.split("").map(&:to_i)
ans = 0
n.each do |i|
  if i == 7
    ans = "Yes"
  else
    ans = "No"
  end
end
puts ans
