def num_pattern num
 unless num == ''
  a = 0
  count = 0
  while a < 10
   b = 0
   while b < 10
    c = 0
    while c < 10
     d = 0
     while d < 10
      if a + b + c + d == num.to_i
       count += 1
      end
      d += 1
     end
     c += 1
    end
    b += 1
   end
   a += 1
  end
  puts count
 end
end

array = []
while true
 input_num = gets.chomp
 array.push input_num
 if input_num == ''
  break
 end
end

array.length.times do |i|
 num_pattern array[i]
end