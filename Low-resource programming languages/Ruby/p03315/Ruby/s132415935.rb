arr = $stdin.gets.chomp.split("")

count = 0

for i in 0..3
  if arr[i] == "+"
    count += 1
  else
    count -= 1
  end
end

puts count