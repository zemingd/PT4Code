h,n = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
cnt = 0
arr = arr.sort.reverse!

 while h > 0
   if cnt == 2
     puts "No"
     exit
   end

   h -= arr[cnt]
   puts "Yes" if h <= 0
   cnt += 1
 end