input = gets
arr = input.split(" ")
if (arr[1].to_i/arr[0].to_i<arr[2].to_i) then
  print arr[1].to_i/arr[0].to_i
else
  print arr[2]
end