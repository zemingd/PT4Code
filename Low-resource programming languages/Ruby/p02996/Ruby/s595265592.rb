N = gets.chomp.to_i
jobs = N.times.map { gets.chomp.split(' ').map(&:to_i) }
last_limit = jobs.map { |_, limit| limit }.max
total_job_time = jobs.map { |time, _| time }.reduce(:+)
if total_job_time > last_limit
  puts 'No'
  exit
end

jobs.sort_by { |_, limit| limit }.reduce(0) do |current_time, (time, limit)|
  next_time = current_time + time
  if limit < next_time
    puts 'No'
    exit
  end
  next_time
end

puts 'Yes'