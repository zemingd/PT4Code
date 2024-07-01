N = gets.to_i
# 1 3 5 7 15 21 35 105
# 1 3 5 9 15 27 45 135
#1は確定
# ~17で３つ選ぶ
arr = []
[3, 5, 7, 9, 11, 13].combination(3){|a,b,c| arr<<[a,b,c] }
count = 0
for i in 0..arr.length-1 do
  all = arr[i][0]*arr[i][1]*arr[i][2]
  if all <= N
    count += 1
  end
end

puts count