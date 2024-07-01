loop do
  a = gets.split.map(&:to_i)
  ans = ""
  break if a[0] == 0 && a[1] == 0
  for i in 0...a[1] do
    ans << "#"
  end
  for j in 0...a[0] do
    puts ans
  end
  puts ""
end