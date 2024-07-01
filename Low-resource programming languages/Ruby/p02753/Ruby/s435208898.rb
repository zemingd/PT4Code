s = gets.split("").map(&:to_i)
ans = "Yes"
if s[0] == s[1] && s[1] == s[2]
  ans = "No"
end
puts ans
  

    