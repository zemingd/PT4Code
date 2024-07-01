N = gets.chomp.to_i
jobs = N.times.map { gets.chomp.split(' ').map(&:to_i) }
jobs.sort_by { |_, limit| limit }.reduce(0) do |current_time, (time, limit)|
  next_time = current_time + time
  if limit < next_time
    puts 'No'
    exit
  end
  next_time
end
 
puts 'Yes'