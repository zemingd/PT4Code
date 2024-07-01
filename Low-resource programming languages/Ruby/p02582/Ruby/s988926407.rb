# ssr

s = gets.chomp
s_1 = s[0]
s_2 = s[1]
s_3 = s[2]

if s_1 == "S"
  if s_2 == "S"
    if s_3 == "S"
      puts 0
    else # s_3 = "r"
      puts 1
    end
  else # s_2 = "r"
    if s_3 == "S"
      puts 1
    else # s_3 = "r"
      puts 2
    end
  end
else # s_1 = "r"
  if s_2 == "S"
    if s_3 == "S"
      puts 1
    else # s_3 = "r"
      puts 1
    end
  else # s_2 = "r"
    if s_3 == "S"
      puts 2
    else # s_3 = "r"
      puts 3
    end
  end
end



