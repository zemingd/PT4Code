N = gets.to_i
arr = []
arr << gets.chomp
ans = 'Yes'
(N-1).times do
  prev = arr[-1][-1]
  w = gets.chomp
  if w[0].chomp != prev || arr.include?(w)
    ans = 'No'
  else
    arr << w
  end
end

puts ans