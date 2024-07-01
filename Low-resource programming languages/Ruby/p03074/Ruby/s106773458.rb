n, k = gets.chomp.split.map(&:to_i)
array = gets.chomp.split('').map(&:to_i)

a = []
last_number = 1
count = 0
n.times do |i|
  if array[i] == last_number
    count += 1
  else
    a << count
    count = 1
    last_number = array[i]
  end

  if i == n - 1
    unless array[i] == last_number
      count = 1
    end

    a << count
  end
end

total =  2 * k + 1
if total >= n
  puts n
  exit
end

n = a.length
answer_array = []
last = 0
i = 0
n.times do
  if i + total - 1 >= n
    break
  end

  if i == 0
    last = a[0..total-1].sum
    answer_array << last
    i += 2
    next
  end
  tmp = a[i + total - 1] + a[i + total - 2] - a[i - 1] - a[i - 2]
  last += tmp
  answer_array << last
  i += 2
end

puts answer_array.max
