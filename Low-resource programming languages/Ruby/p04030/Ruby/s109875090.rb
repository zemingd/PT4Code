arr = gets.chomp.split('')
ans = []
i = 0
while i < arr.size
  if arr[i] == "0"
    ans << 0
  elsif arr[i] == "1"
    ans << 1
  else
    ans.pop
  end
  i += 1
end
puts ans.join