n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
q = gets.chomp.to_i
i = 0
result = []
while i < q
  b,c = gets.chomp.split(' ').map(&:to_i)
  j = 0
  while j < n
    if arr[j] == b
      arr[j] = c
    end
    j += 1
  end
  #p arr
  result << arr.sum
  i += 1
end
puts result