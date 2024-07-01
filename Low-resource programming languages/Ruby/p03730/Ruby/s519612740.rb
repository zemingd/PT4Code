a, b, c = gets.split.map(&:to_i)
flag = false
remain1 = a % b
if remain1 == c
  puts "YES"
else
  aa = a * 2
  while aa % b != remain1 do
    if aa % b == c
      flag = true
      break
    else
      aa += a
    end
  end
  puts flag ? "YES" : "NO"
end
