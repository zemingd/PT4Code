s = gets.split("")
t = gets.split("")
num = 0
for i in 0..2 do
  if s[i] === t[i] then
    num  = num + 1
  end
end
print(num)