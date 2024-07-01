count=0
count=gets.to_i
while true
   break if count==0
   line=gets.split(" ")
   ans=Array.new
   for i in 0..7
      line[i]=line[i].to_i 
   end
   for j in 0..3
      ans[j]=line[j+4]-line[j]
      ans[j]=ans[j].to_i
   end
   
   if ans[0]==ans[2] and ans[1]==ans[3]
      puts "YES"
   else
      puts "NO"
   end
   count-=1
end