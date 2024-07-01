n = gets.to_i
job = []

n.times do
  input = gets.chomp.split(" ").map(&:to_i)
  job << {:a => input[0] , :b => input[1]}
end

job.sort_by!{|hash| hash[:b]}

time = 0
job.each do |j|
  time += j[:a]
  if time > j[:b]
    puts "No"
    exit
  end
end

puts "Yes"