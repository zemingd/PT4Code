# S
# hiが1つ以上入っていればYes, No
# hii
S = gets
if S.index("hi") != nil && S.index("hii") == nil
  puts "Yes"
else
  puts "No"
end
