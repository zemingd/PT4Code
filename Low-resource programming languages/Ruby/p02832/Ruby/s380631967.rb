n = gets.to_i
a = gets.split.map(&:to_i)
x = 1
count = 0
flag = false
while true do
  pos = a.index(x)
  if pos.nil?
    if !flag
      count = -1
    else
      count += a.size
    end
    break
  else
    count += pos
    flag = true
    a.slice!(0, pos + 1)
    break if a.size == 0
  end
  x += 1
end
puts count
