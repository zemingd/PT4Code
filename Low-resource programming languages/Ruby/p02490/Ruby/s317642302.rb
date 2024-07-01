while true
   line = gets
   arr = line.split
   arr.map!{|i| i.to_i}
   if arr[0] == 0 and arr[1] == 0
      break
   end
   arr.sort!
   puts "#{arr[0]} #{arr[1]}"
end