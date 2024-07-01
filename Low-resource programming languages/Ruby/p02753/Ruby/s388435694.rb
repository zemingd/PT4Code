s = gets.split("").map(&:to_s)
result = "Yes"
if s[0] == s[1] && s[0] == s[2]
    result = "No"
end

puts result