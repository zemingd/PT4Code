n, q = gets.chomp.split.map(&:to_i)
str = gets.chomp

ruisekiwa = []
flag = false
for i in 0...n
  if flag
    if str[i] == "C"
      ruisekiwa[i] = ruisekiwa[i-1] + 1
      flag = false
    else
      ruisekiwa[i] = ruisekiwa[i-1]
      flag = false if str[i] != "A"
    end
  else
    if str[i] == "A"
      flag = true
    end
    if i == 0
      ruisekiwa[i] = 0
    else
      ruisekiwa[i] = ruisekiwa[i-1]
    end
  end
end
ary = []
q.times do
  ary << gets.chomp.split.map(&:to_i)
end

ary.each do |item|
  ans = ruisekiwa[item[1]-1] - ruisekiwa[item[0]-1]
  puts ans
end


