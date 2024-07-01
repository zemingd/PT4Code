def rle(str)

  n = str.size
  ret = []

  last = str[0]
  cnt = 0
  str += "\n"

  for i in 0 .. n
    if str[i] == last
      cnt += 1
    else
      ret << [last, cnt]
      last = str[i]
      cnt = 1
    end
  end

  return ret
end

n = gets.to_i
str = gets.chomp

puts rle(str).size
