usrInputList = gets.split

H = usrInputList[0]
A = usrInputList[1]

if H % A == 0
  puts H / A
else
  puts H / A + 1
end