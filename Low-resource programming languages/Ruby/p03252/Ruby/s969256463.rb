s = gets.chomp.split(//)
t = gets.chomp.split(//)

start = {}
goal = {}
s.zip(t).each do |a, b|
  if (start[a] and start[a] != b) || (goal[b] and goal[b] != a)
    puts 'No'
    exit
  end
  start[a] = b
  goal[b] = a
end

puts 'Yes'

