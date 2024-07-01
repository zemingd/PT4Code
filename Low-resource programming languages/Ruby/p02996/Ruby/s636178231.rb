n = gets.chomp.to_i
tasks = []

n.times do
  tasks << gets.chomp.split(" ").map(&:to_i)
end

tasks.sort! do |a, b|
  a[1] <=> b[1] 
end

now = 0
result = "Yes"
tasks.each do |task|
  now += task[0]
  if now > task[1]
    result = "No"
    break
  end
end

puts result