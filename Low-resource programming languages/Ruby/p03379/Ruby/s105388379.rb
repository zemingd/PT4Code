n = gets.chomp.to_i

arr = gets.chomp.split.map(&:to_i)
sorted = arr.sort
ans = [sorted[(n-1)/2], sorted[(n+1)/2]]

arr.each do |i|
  if i > ans[0]
    puts ans[0]
  else
    puts ans[1]
  end
end
