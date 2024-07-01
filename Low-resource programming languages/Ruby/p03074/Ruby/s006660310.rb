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
