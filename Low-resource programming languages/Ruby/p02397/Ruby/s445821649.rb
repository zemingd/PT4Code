array_out = []
while true
 array_in = gets.split
 if array_in == ["0","0"]
  break
 end
 array_out.push array_in
end

i = 0
while i < array_out.length
 if array_out[i][0].to_i > array_out[i][1].to_i
  puts "#{array_out[i][1]} #{array_out[i][0]}"
 else
  puts "#{array_out[i][0]} #{array_out[i][1]}"
 end

 i = i+1
end