n = gets.to_i
ary =gets.chomp.split(' ').map(&:to_i)
ans=[]
flag = true
ary.each do |a|
  if ans[a]==nil
    ans[a]=1
  else
    flag = false
    break
  end
end
if flag
  puts "YES"
else
  puts "NO"
end