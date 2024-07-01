arr = gets.split.map(&:to_i)
  arr.length.times do |i|
    (arr.length - i).times do |j|
      arr[i] = arr[j + i] if arr[i] > arr[j + i]
    end
  end
  print arr.join(' ')
  puts