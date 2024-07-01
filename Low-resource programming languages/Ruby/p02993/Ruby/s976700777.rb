s_code = gets.chomp!

s_code = s_code.split("")

#連続するnum があるか判断
#とりあえずeach メソッド
#print(s_code, "\n")

count = 3
while count > 0
  if s_code[count].to_i - s_code[count-1].to_i == 0
    print("Bad\n")
    break
  else
    count = count-1
    #print(count, "\n")
    if count == 0
      print("Good\n")
    end
  end
end