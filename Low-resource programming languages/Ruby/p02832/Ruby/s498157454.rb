n = gets.to_i
a = gets.split(' ').map(&:to_i)
if a.include?(1) != true
  puts '-1'
  exit
end

j = 1
loop do
  if a[j-1] != j
    a[j-1,1] = []
    a.uniq!
  elsif a[j-1] == j
    j += 1
  end
  break if  j > a.size
end
puts n - a.size