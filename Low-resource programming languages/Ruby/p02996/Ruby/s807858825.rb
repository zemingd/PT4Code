def result(n, a, b)
  new_array = Array.new
  n.times do |i|
    new_array.push([a[i],b[i]])
  end

  new_array.sort_by!(&:last).reverse
  # p new_array

  count = 0
  flg = true
  new_array.each do |item|
    count += item[0]
    if(count > item[1])
      flg = false
      break
    end
  end
  puts flg ? "Yes" : "No"
end

N = gets.to_i
A, B = N.times.map{gets.split.map(&:to_i)}.transpose

result(N, A, B)
