i=1
while true
   line=gets
   arr=line.split(" ")
   arr[0],arr[1]=arr[0].to_i,arr[1].to_i

   if arr[0]==0 and arr[1]==0
      break
   end
   puts (arr.sort.join(" "))
   i+=1
end