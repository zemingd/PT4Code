max = gets.to_i - 1
arr = gets.chomp.split(" ").map(&:to_i)

for i in 0..max do
  if i == 0 then
    if arr[i] != arr[i+1]^arr[max] then
      p "No"
      exit
    end
  elsif i == max then
    if arr[i] != arr[0]^arr[max-1] then
      p "No"
      exit
    end
  else
    if arr[i] != arr[i-1]^arr[i+1] then
      p "No"
      exit
    end
  end
end

p "Yes"
    