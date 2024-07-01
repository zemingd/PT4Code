n = gets.chomp!.to_i
s = gets.chomp!.to_i
#n = 6
#s = "abcabc"
ls = s.split("")
if n%2 == 0
  r = n / 2 -1
  second = []
  for i in 0..r do
    second << ls[i]
  end
  #p second
  for i in 0..r do
    ls.delete_at(r)
  end

if ls == second
  print("Yes\n")
else
  print("No\n")
end

else
  print("No\n")
end