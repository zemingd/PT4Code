trg = false
N = gets.split(//)
for i in N do
  if i == "7" then 
    trg = true
    break
  end 
end

if trg then
  puts("Yes")
else
  puts("No")
end
