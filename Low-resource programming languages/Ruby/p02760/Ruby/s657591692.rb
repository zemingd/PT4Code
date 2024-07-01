top = gets
middle = gets
bottom = gets

bingo = (0..2).reduce([]){|arr, i| arr.append(top.split(" ")[i])
}
bingo = (0..2).reduce(bingo){|arr, i| arr.append(middle.split(" ")[i])
}
bingo = (0..2).reduce(bingo){|arr, i| arr.append(bottom.split(" ")[i])
}

bingo = [1,2,3,4,5,6,7,8]

N = gets
for i in (1..N.to_i)
  b = gets
  index = bingo.index(b.to_i)
  if(index)then
    bingo[index] = false
  end
end

ret = false
ret = (0..2).reduce(ret){|sum,i|
  break sum if sum
  sum||(!bingo[i*3]&&!bingo[i*3+1]&&!bingo[i*3+2])
}
if !ret then
ret = (0..2).reduce(ret){|sum,i|
  break sum if sum
  sum||(!bingo[i]&&!bingo[i+3]&&!bingo[i+6])
}
end

if !ret then
  ret = (!bingo[0]&&!bingo[4]&&!bingo[8])||(!bingo[2]&&!bingo[4]&&!bingo[6])
end

puts ret ? "Yes" : "No"