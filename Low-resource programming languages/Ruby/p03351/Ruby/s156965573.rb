def canCommunicate(arr)
  if (arr[0] - arr[2]).abs <= arr[3]
    return "Yes"
  end
  if (arr[0] - arr[1]).abs > arr[3]
    return "No"
  end
  if (arr[1] - arr[2]).abs > arr[3]
    return "No"
  end
  return "Yes"
end

arr = gets.chomp.split().map!(&:to_i)
puts canCommunicate(arr)