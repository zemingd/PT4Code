n = gets.to_i
tasks = []
n.times do
  a, b = gets.split.map(&:to_i)
  tasks << [b,a]
end
now = 0
tasks.sort.each do |t|
  now += t[1]
  if now > t[0]
    puts 'No'
    exit
  end
end
puts 'Yes'
