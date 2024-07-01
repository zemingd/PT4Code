n = gets.to_i
array = gets.split.map(&:to_i)

count = 0
array.each_with_index do |e, i|
  if i == n - 1
    count += e
    break
  end

  if e.negative?
    if array[i + 1].negative?
      e *= -1
      array[i + 1] = array[i + 1] * -1
    elsif e.abs >= array[i + 1]
      e *= -1
      array[i + 1] = array[i + 1] * -1
    end
  end

  count += e
end

puts count
