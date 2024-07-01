s = gets.split("")
ans = 0

if s.include?("R")
  if s[0] == "R" && s[1] == "R" && s[2] == "R"
    ans = 3
  elsif s[0] == "R" && s[1] == "R" || s[1] == "R" && s[2] == "R"
    ans = 2
  else
    ans = 1
  end
else
  ans = 0
end
puts ans