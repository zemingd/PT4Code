n = gets.to_i
arr = gets.split(' ').map(&:to_i)
flag = true
i = 0
num_swap = 0

while(flag)
  flag = false
  num_i = n - 1
  while(num_i >= (i + 1)) do
    v = arr[num_i]
    if v < arr[num_i - 1]
      arr[num_i] = arr[num_i - 1]
      arr[num_i - 1] = v
      num_swap += 1
    end
    flag = true
    num_i -= 1
  end
  i += 1
end

puts arr.join(' ')
puts num_swap

