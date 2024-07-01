input = gets.split(" ")
m = input[1].to_i
arr_tokuhyousuu = gets.split(" ").map(&:to_i)
soutouhyousuu = arr_tokuhyousuu.sum

cnt_select = 0

arr_tokuhyousuu.each do |tokuhyousuu|
  tokuhyousuu = tokuhyousuu.to_i
  if tokuhyousuu < soutouhyousuu/(4*m)
  	
  else
    cnt_select += 1
  end
end

if cnt_select >= m
  puts "Yes"
else
  puts "No"
end
