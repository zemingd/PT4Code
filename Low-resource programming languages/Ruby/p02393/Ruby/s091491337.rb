arr = gets.split.map(&:to_i)
  arr.length.times do |i|
    (arr.length - i).times do |j|
      if arr[i] > arr[i+j]
        arr[i], arr[i+j] = arr[i+j], arr[i]
      end
    end
  end
  print arr.join(' ')
  puts