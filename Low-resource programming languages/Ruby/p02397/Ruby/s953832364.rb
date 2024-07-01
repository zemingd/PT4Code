ARGF.each_line do |line|
  arr = line.split.map(&:to_i)
  break if arr[0] == 0 && arr[1] == 0
  sarr = arr.sort
  puts "#{sarr[0]} #{sarr[1]}"
end 