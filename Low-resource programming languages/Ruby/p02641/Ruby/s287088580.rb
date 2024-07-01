x, n = gets.chomp.split().map(&:to_i)
if n == 0
  print(x)
  exit 0
else
  arr = gets.chomp.split().map(&:to_i).sort!
end

i = arr.find_index(x)

if i.nil?
  print(x)
  exit 0
end

j = 1
while true do
  row = i - j
  high = i + j
  if arr[row] != x - j
    print(x - j)
    break
  elsif arr[high] != x + j
    print(x + j)
    break
  end
  j += 1
end
