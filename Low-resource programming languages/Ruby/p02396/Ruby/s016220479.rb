ary = Array.new(10000)
ary[1] = gets.to_i
i = 2
while ary[i-1] != 0
  ary[i] = gets.to_i
  i += 1
end
if i == 2
  puts ""
else
  for j in 1..i-2
    puts "Case #{j}: #{ary[j]}"
  end
end