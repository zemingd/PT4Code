a = gets.split.map(&:to_i)

for i in 0..a.length-1
  if a[i] == 0 then
    puts i + 1
    break
  end
end
