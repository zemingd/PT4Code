s = gets.split("")
t = gets.split("")
dic ={}
for i in 0..s.length-1
  if s[i]==t[i]
    s.delete_at(i)
    t.delete_at(i)
  else
    if dic.key?(:s[i])
      res = "No"
      break
    else
      dic[s[i]] = t[i]
    end	
  end
  res = "Yes"
end

puts res