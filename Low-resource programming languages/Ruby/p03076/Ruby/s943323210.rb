def read_i
  gets.chomp.split(' ').map(&:to_i)
end

minutes = []
5.times do |i|
  minutes << read_i[0]
end

non_just_minutes = minutes.select { |minute| minute % 10 != 0 }
just_minutes = minutes.select { |minute| minute % 10 == 0 }

sorted_minutes = non_just_minutes.sort_by do |minute|
  minute % 10
end

time = 0

just_minutes.each do |num|
  time += num
end

last = sorted_minutes.shift

sorted_minutes.each do |num|
  time += ((num * 0.1).ceil * 10)
end

time += last

puts time