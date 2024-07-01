n = gets.to_i
arr = gets.split.map(&:to_i).sort
ans = 0

arr.each_with_index do |a, i|
  flg = true
  next if a == arr[i+1]
  (0..i - 1).each do |j|

    if a % arr[j] == 0
      flg = false
      break
    end
  end
  ans += 1 if flg
end

p ans
