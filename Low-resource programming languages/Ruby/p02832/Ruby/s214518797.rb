n = gets.to_i
a = gets.split(' ').map(&:to_i)
if a.include?(1) != true
  puts '-1'
  exit
end

j = 1
count = 0
a.each do |i|
  if i == j
    j += 1
  else
    count += 1
  end
end
puts count