input = gets
#lst = input.split(" ").each{ |str|
#  str = str.to_i
#}
lst = input.split(" ")
for i  in 0..2
  lst[i] = lst[i].to_i
  #print l + ","
end
if lst[0] <= lst[2] && lst[0] + lst[1] >= lst[2]
    print("YES\n")
else
print("NO\n")
end

