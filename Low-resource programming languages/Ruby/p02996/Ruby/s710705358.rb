N = gets.chop.to_i

tasks = []

N.times { tasks << gets.chop.split.map(&:to_i) }

tasks = tasks.sort_by { |t| t[1] }

time = 0
tasks.each do |task|
  time += task[0]
  if task[1] < time
    puts "No"
    exit
  end
end

puts "Yes"
