def canCommunicate(arr)
  if (arr[0] - arr[2]).abs <= arr[3]
    return "YES"
  end
  if (arr[0] - arr[1]).abs <= arr[3] && (arr[1] - arr[2] <= arr[3])
    return "YES"
  end
  return "NO"
end

line = gets.chomp
arr = line.split()
arr.map!(&:to_i)
puts canCommunicate(arr)