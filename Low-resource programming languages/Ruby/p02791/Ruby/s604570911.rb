n = gets.chop.to_i
arr = gets.chop.split.map(&:to_i)

result = 0
for i in 0..arr.size-1
  back_row = i == 0 ? i : i-1
  back_number = arr[back_row]
  if arr[i] <= back_number
    result += 1
  end
end
print result