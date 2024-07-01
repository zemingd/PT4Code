s = gets
if s[0] == "R" && s[1] == "R"
  if s[2] == "R"
    puts 3
  else
    puts 2
  end
else
  if s[1] == "R" && s[2] == "R"
    puts 2
  else
    if s.count("R") == 0
      puts 0
    else
      puts 1
    end
  end
end
  