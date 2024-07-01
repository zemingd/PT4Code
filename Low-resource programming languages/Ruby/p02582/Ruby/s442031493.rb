ab = gets.chomp
rainCnt = 0
rainmax = 0
if ab[0] == "R" then
  rainCnt += 1
end
 
  rainmax = rainCnt
if ab[1] == "R" then

  rainCnt += 1
  rainmax = rainCnt
else
  rainCnt = 0
end
if ab[2] == "R" then

  rainCnt += 1
    rainmax = rainCnt
else
  rainCnt = 0
end
puts rainmax
