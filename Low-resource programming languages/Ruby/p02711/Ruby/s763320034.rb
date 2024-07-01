n = gets.chomp.split("").map(&:to_i)
ans = ""
n.each do |i|
  if i == 7
    ans = "Yes"
    puts ans
    return
  else
    ans = "No"
  end
end
puts ans
