s = gets.split("").map(&:to_s)
if s[0] == s[2]
  if s[1] == "R"
    if s[0] == "R"
      puts 3
    else
      puts 1
    end
  else
    if s[0] == "R"
      puts 1
    else
      puts 0
    end
  end
else
  puts s.count("R")
end
