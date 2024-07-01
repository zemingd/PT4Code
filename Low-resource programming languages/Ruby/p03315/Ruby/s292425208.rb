S = gets.split("")
count = 0
for i in 0..3 do
  if S[i] == "+"
    count += 1
  else
    count -= 1
  end
end

puts count