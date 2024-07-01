def checkRaech(check,num)
  for i in 0 .. 2
    if check[i] + check[i+1] + check[i+2] == 3 then
      return true
    elsif check[0+i] + check[3+i] + check[6+i] == 3 then
      return true
    end
  end
  if check[0] + check[4] + check[8] == 3 then
    return true
  elsif check[2] + check[4] + check[8] == 3 then
    return true
  end
  return false
end
def bingoCheck(bingo, num, check)
  for i in 0 .. 8
    if bingo[i] == num then
      check[i] = 1
      return true
    end
  end
  return false
end

bingo = Array.new(9,0)
check = Array.new(9,0)
for i in 0 .. 2 
  inputLine = gets.chomp.split(" ")
  for j in 0 .. 2
    bingo[i*3 + j] = inputLine[j].to_i
  end
end
n = gets.to_i
for i in 0 .. n-1
  #p check
  inputNum = gets.chomp.to_i
  #check Number
  if bingoCheck(bingo, inputNum, check) == true then
    if checkRaech(check, inputNum) == true then
      puts "Yes"
      return
    end
  end
end 
puts "No"
