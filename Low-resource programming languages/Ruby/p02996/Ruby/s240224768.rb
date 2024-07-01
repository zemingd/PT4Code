N = gets.chomp.to_i
tasks = N.times.map { gets.split.map(&:to_i) }

t = 0
tasks.sort_by { |task| [task[1], -task[0]] }.each do |a, b|
  t += a
  if t > b
    puts "No"
    exit
  end
end
puts "Yes"
