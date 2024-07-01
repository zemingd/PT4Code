A, B = gets.split.map &:to_i
cnt = 0
(A..B).each do |i|
  arr = i.to_s.chars
  cnt += 1 if arr[0] == arr[-1] && arr[1] == arr[-2]
end
puts cnt