x,n = gets.split.map(&:to_i)
if n == 0
  puts x
  exit
end
p = gets.split.map(&:to_i)

ns = Array.new(102, 0)
for i in 0..(n-1)
  ns[p[i]] = 1
end

ans = 0
for i in 0..100
  if ns[[0,x-i].max] == 0
    ans = [0,x-i].max
    break
  elsif ns[[x+i,101].min] == 0
    ans = [x+i,101].min
    break
  end
end
puts ans