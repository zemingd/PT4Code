n = gets.to_i
arr = gets.split.map(&:to_i)
flag = true
i = 0
swap_count = 0

while flag
  flag = false
  j = n-1
  while j >= (i+1)
    if arr[j] < arr[j-1]
      arr[j], arr[j-1] = arr[j-1], arr[j]
      flag = true
      swap_count += 1
    end
    j -= 1
  end

  i += 1
end
s = ""
arr.each{|a| s += a.to_s; s += " "}
puts s.chop
puts swap_count