n = gets.chomp.split("").map(&:to_i)
n.each do |i|
  if i == 7
    ans = "Yes"
    return
  else
    ans = "No"
  end
end
puts ans
