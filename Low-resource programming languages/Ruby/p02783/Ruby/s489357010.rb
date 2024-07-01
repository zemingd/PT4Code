usrInputList = gets.split

h = usrInputList[0].to_i
a = usrInputList[1].to_i

if h % a == 0
  puts h / a
else
  puts h / a + 1
end