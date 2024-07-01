res = Array.new()
while (true) do
  line = gets
  arr = line.split(" ")
  break if (arr[1] == '?')
  res << eval(line)
end

res.each do |ans|
  p ans
end