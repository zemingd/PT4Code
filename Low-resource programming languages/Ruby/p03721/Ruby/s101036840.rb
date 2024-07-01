n,k = gets.chomp.split(' ').map(&:to_i)
sum = 0
list = []
flag = false
ans = nil
n.times do
  list << gets.chomp.split(' ').map(&:to_i)
end
list.sort!
list.each do |pair|
  sum += pair[1]
  if sum >= k && flag == false 
    ans = pair[0]
    flag = true
  end
end
puts ans