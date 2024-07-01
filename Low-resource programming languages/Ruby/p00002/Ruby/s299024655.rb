
while input = gets do
  arr = []
  ans = 0
  arr = input.split(" ")

  for i in 0..arr.length do
    ans  += arr[i].to_i
  end
  ans = ans.to_s.split("")
  puts  ans.length
end
