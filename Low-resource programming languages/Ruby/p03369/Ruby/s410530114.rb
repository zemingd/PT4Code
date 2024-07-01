arr = $stdin.gets.chomp.split("")

count = 700

for i in 0..2
  if arr[i] == "o"
    count += 100
  end
end

puts count