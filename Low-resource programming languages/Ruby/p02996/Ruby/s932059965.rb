n = gets.chomp.to_i
jobs = []
n.times do
  a, b = gets.split.map(&:to_i)
  jobs << [a, b]
end

jobs.sort! { |a, b| a[1] <=> b[1] }

c = 0
jobs.each do |job|
  c += job[0]
  if c > job[1]
    puts 'No'
    exit
  end
end

puts 'Yes'