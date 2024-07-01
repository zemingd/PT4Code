n = gets.to_i
s = []
s = gets.split(" ")
ycnt = 0
n.times do |i|
  if s[i] == "Y"
    ycnt += 1
  end
end

if ycnt != 0
  print("Four\n")
else
  print("Three\n")
end