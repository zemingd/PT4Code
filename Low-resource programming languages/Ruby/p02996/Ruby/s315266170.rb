n = gets.to_i
arr = []
n.times do
  a = gets.split.map(&:to_i)
  arr << a
end
arr.sort_by! { |_, v| v }
time = 0
check = 0
arr.each do |k, v|
  time += k
  check = 1 unless v >= time
end
if check.zero?
  puts :Yes
else
  puts :No
end