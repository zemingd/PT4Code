# -*- coding: utf-8 -*-
#二次元配列にすりゃいいだろ？ (配列の配列という安直な発想)
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
 if array_out[i][0] > array_out[i][1]
  puts "#{array_out[i][1]} #{array_out[i][0]}"
 else
  puts "#{array_out[i][0]} #{array_out[i][1]}"
 end

 i = i+1
end