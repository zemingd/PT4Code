# S
# hiが1つ以上入っていればYes, No
# hii
S = gets
if S.index("hi") != nil && S.match(/[h+]hi/) == nil && S.match(/hi[i+]/) == nil
  puts "Yes"
else
  puts "No"
end
