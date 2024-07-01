def bubble!(arr)
  has_unordered = true
  count = 0

  while has_unordered
    has_unordered = false

    for i in (1..(arr.length-1)).to_a.reverse
      if (x=arr[i]) < arr[i-1]
        arr[i] = arr[i-1]
        arr[i-1] = x
        has_unordered = true
        count += 1
      end
    end
  end

  [arr, count]
end

gets
xs=gets.split.map(&:to_i)

result, count = bubble!(xs)

puts result.join(" ")
p count

