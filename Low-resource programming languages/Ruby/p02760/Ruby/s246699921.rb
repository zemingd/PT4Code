top = gets.chomp
middle = gets.chomp
bottom = gets.chomp

bingo = (0..2).reduce([]){|arr, i| arr.append(top.split(" ")[i].to_i)
}
bingo = (0..2).reduce(bingo){|arr, i| arr.append(middle.split(" ")[i].to_i)
}
bingo = (0..2).reduce(bingo){|arr, i| arr.append(bottom.split(" ")[i].to_i)
}

N = gets.chomp
N.to_i.times{
  b = gets.chomp
  index = bingo.index(b.to_i)
  if(index != nil)then
    bingo[index] = false
  end
}

ret = false
ret = (0..2).inject(ret){|sum, j|
  if sum then 
    puts "Yes"
    exit
  end
  sum = sum||(!bingo[j*3]&&!bingo[j*3+1]&&!bingo[j*3+2])
}

if !ret then
ret = (0..2).inject(ret){|sum, k|
  if sum then 
    puts "Yes"
    exit
  end
  sum = sum||(!bingo[k]&&!bingo[k+3]&&!bingo[k+6])
}
end

if !ret then
  ret = (!bingo[0]&&!bingo[4]&&!bingo[8])||(!bingo[2]&&!bingo[4]&&!bingo[6])
end

puts ret ? "Yes" : "No"
exit
