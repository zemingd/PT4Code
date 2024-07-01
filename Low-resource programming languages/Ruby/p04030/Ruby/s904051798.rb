a = gets.chomp.to_s

ans = []

len = a.length
for i in 0..len-1
  if a[i] == "0"
    ans.push("0")
  elsif a[i] == "1"
    ans.push("1")
  elsif ans.length > 0
    ans.pop()
  end
end

len = ans.length
for i in 0..len-1
  print ans[i]
end