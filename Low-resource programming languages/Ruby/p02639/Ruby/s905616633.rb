a = gets.split.map(&:to_i)

for i in 1..a.length-1
  if a[i] == 0 then
    puts i
    break
  end
end
