s = gets
a = 0
ans = 0
for i in 0...3
  if s[i]=="R"
    a+=1
  else
    ans = [ans,a].max
    a=0
  end
end
ans = [ans,a].max
puts ans