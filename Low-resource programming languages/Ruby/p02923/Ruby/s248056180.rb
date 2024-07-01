lines = readlines
n = lines[0].chomp.to_i
arr = lines[1].chomp.split(" ").map {|aa| aa.to_i}

result = 0

arr.each_with_index do |a, i|
  counter = 0
  if i > 0 && a > arr[i-1]
    for j in i..(n-2)
      if arr[j] >= arr[j+1]
        counter += 1
      else
        break
      end
    end
  elsif i == 0
    for j in i..(n-2)
      if arr[j] >= arr[j+1]
        counter += 1
      else
        break
      end
    end
  end

  if counter > result
    result = counter
  end

end

p result