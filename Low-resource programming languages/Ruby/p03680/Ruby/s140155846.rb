n = gets.chomp.to_i

a = [0]
n.times do
  a << gets.chomp.to_i
end

curr = 1
pushed = []
ans = 0
n.times do
  ans += 1
  nex = a[curr]
  if nex == 2 then
    puts ans
    exit
  elsif pushed.include?(nex) then
    break
  end
  curr = nex
  pushed << curr
end
puts -1