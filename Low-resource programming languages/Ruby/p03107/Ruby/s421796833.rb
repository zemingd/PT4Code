s=gets.chomp
ans=[]
ans << s.count("1")
ans << s.count("0")

puts ans.min*2
