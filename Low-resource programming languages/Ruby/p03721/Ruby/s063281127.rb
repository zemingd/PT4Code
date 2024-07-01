n,k = gets.chomp.split(' ').map(&:to_i)
sum = 0
flag = false
ans = nil
n.times do
  a,b = gets.chomp.split(' ').map(&:to_i)
  sum += b
  if sum >= k && flag == false 
    ans = a
    flag = true
  end
end
puts ans