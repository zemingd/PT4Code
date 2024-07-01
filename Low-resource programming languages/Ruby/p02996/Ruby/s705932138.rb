time = 0
gets.to_i.times.map{ gets.split.map(&:to_i) }.sort_by{|t| t[1] }.each do |task|
  time += task[0]
  if time > task[1]
    puts 'No'
    exit
  end
end
puts 'Yes'
