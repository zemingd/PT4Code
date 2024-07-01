def charSort(chr)
  retStr = ""
  chr.each_char { |c|
    if retStr.empty? then
      retStr = c
      next
    end
    for i in 0..(retStr.length - 1) do
      if retStr[i] > c then
        if i == 0 then
          retStr = c + retStr
        else
          retStr = retStr[0..(i-1)] + c + retStr[i..-1]
        end
        break
      else 
        if (i == retStr.length - 1) then
          retStr += c
        end
      end
    end
  }
  return retStr
end

N = STDIN.gets
S = STDIN.gets.chomp
count = 0

for i in 0..(S.length - 1) do
  tmpCount = 0
  a = charSort(S[0..i]).squeeze
  b = charSort(S[i+1..-1]).squeeze
  a.each_char { |ac|
    b.each_char { |bc|
      if ac == bc then
        tmpCount += 1
      end
    }
  }
  tmpCount
  if count < tmpCount then
    count = tmpCount
  end
end

p count
