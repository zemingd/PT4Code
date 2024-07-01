N = gets.to_i

array = Array.new(4)
array[0] = N / 1000
array[1] = N / 100 % 10
array[2] = N / 10 % 10
array[3] = N % 10

flg = false
3.times do |i|
  flg = true if(array[i] == array[i+1])
end

if flg
  puts "Bad"
else
  puts "Good"
end

