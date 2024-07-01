arr = gets.chomp.split.map{|x| x.to_i}
cnt_7 = 0
cnt_5 = 0

arr.length.times do |i|
  if arr[i] == 5
    cnt_5 += 1
  elsif arr[i] == 7
    cnt_7 += 1
  end
end

if cnt_5 == 2 && cnt_7 == 1
  puts 'YES'
else
  puts 'NO'
end

