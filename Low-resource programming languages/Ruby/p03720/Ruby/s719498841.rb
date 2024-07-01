N, M = gets.split.map &:to_i
arr = Array.new(N, 0)
M.times do
  a, b = gets.split.map &:to_i
  arr[a-1] += 1
  arr[b-1] += 1
end
arr.each do |e|
  puts e
end