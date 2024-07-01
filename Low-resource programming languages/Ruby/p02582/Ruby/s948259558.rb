s = gets.chomp.split("")
max = 0
cnt = 0
for i in 0..2
  if s[i] == "R"
    cnt += 1
  else
    max = [cnt,max].max
    cnt = 0
  end
end
max = [cnt,max].max
puts max
