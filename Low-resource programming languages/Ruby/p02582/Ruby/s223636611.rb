ans = 0
count = 0
flag = false
weathers = gets.chomp.split("").map do |weather|
  if weather == "R" && !flag
    flag = true
    count = 1
  elsif weather == "R" && flag
    count += 1
  else
    flag = false
    count = 0
  end
  if ans < count 
    ans = count
  end
end
p ans