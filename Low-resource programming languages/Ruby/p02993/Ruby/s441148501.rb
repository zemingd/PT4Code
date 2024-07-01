s = gets.chomp!
ls = s.split("").map(&:to_i)
count = 0
for i in 0..ls.length-1
  if ls[i] == ls[i+1]
    count+=1
  end
end
#p ls

#p count
if count >= 1
  print("Bad\n")
else
  print("Good\n")
end