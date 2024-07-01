n = gets.to_i
list = {}
prev_last = nil
ok = true
for i in 0...n do
  w = gets.chomp
  if list.include?(w) || (!prev_last.nil? && w[0] != prev_last)
    ok = false
  end
  list[w] = true
  prev_last = w[-1]
end
puts ok ? "Yes" : "No"
