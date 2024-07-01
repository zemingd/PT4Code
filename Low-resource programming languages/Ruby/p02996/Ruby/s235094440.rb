n = gets.to_i
arr = []
n.times do
  arr << gets.chomp.split(' ').map(&:to_i)
end
arr.sort_by!{ |i| i[1] }
time = 0
ok = true
(0...n).each do |i|
  time += arr[i][0]
  ok = ok && arr[i][1] >= time
end
puts ok ? 'Yes' : 'No'