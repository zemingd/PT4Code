n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
 
ans = Array.new(n){0}
a.each do |i|
  ans[a[i]-1] += 1
end
ans.each do |i|
  puts i
end