gets
a = gets.split.map(&:to_i)

current = 1
count = 0
a.each do |i|
  if i == current
    current += 1
  else
    count += 1
  end
end

if current == 1
  puts -1
else
  puts count
end
