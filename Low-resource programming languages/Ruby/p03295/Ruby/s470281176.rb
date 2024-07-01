n, m = gets.chomp.split.map(&:to_i)
list = []
m.times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  list[i] = [a,b]
end

list.sort_by!{ |a,b| a*(n+1) + b }

count = 0
right = n
list.each do |a,b|
  if a < right
    right = b if b < right
  else
    count += 1
    right = b
  end
end
count += 1

puts(count)