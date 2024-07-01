suuretsu = 0
list = []
i = 0
input = gets.chomp.split(" ").map{|x|x.to_i}


baseNum,suuretsuNum = input


if suuretsuNum != 0
  suuretsu = gets.chomp.split(" ").map{|x|x.to_i}

  while true
    if suuretsu.include?(baseNum - i)
    else
      puts baseNum - i
      break
    end
    if suuretsu.include?(baseNum + i)
    else
      puts baseNum + i
      break
    end
    i += 1
  end
else
  puts baseNum
end
