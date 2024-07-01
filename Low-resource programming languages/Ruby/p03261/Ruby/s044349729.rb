N = gets.to_i
arr = []
arr << gets.chomp
(N-1).times do
  prev = arr[-1][-1]
  w = gets.chomp
  if w[0] == prev || arr.include?(w)
    puts 'No'
    exit
  else
    arr << w
  end
end

puts 'Yes'