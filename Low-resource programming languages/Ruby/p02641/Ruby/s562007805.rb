x, n = gets.split.map(&:to_i)
return puts x if n == 0
nums = gets.split.map(&:to_i) unless n == 0
target = (1..100)
diff = x
i = x
target.each do |n|
  unless nums.include?(n)
    tmp_diff = n - x
    tmp_diff = tmp_diff * (-1) if tmp_diff < 0
    if diff > tmp_diff
      diff = tmp_diff
      i = n
    end
    #return puts diff + 1 if diff == 1
  end
end
puts i