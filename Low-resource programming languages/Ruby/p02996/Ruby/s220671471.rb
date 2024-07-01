N = gets.to_i

ab = []
limit = 0
tasks = 0
N.times do
  a, b = gets.split.map(&:to_i)
  tasks += a
  limit = b if limit < b
  ab << [a, b]
end

if tasks > limit
  puts 'No'
  exit
end

ab.sort_by! { |e| [e[1], e[0]] }

task = 0
ab.each do |e|
  task += e[0]
  if task > e[1]
    puts 'No'
    exit
  end
end

puts 'Yes'