while true
  ary = gets.split.map(&:to_i)
  a = ary[0]
  b = ary[1]
  break if a == 0 && b == 0
  puts ary.sort.join(" ")
end