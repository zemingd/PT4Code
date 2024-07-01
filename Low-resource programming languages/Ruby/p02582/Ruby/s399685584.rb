s = gets.split("")
temp = ""
ans = 0
i = 1

s.each do |n|
  if i == 1
    if n == "R"
      ans += 1
    else
      ans = 0
    end
  else
    if temp == n
      if n == "R"
        ans += 1
      else
        ans = 0
      end
    end
  end
  temp = n
  i += 1
end

puts ans