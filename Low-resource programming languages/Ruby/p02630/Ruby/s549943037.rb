n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i).sort!
q = gets.to_i
ans = []
q.times do
  s = 0
  bc = gets.chomp.split(' ').map(&:to_i)
  k = 0
  while k < arr.size
    if arr[k] == bc[0]
      arr[k] = bc[1]
    end
    if arr[k] > bc[0]
      break
    end
    k += 1
  end
  ans.push(arr.sum)
end
ans.each do |s|
  puts s
end
