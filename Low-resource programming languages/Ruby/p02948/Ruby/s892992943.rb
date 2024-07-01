n, m = gets.chomp.split(' ').map(&:to_i)

free = (1..m).to_a

jobs = []
n.times do |i|
    a, b = gets.chomp.split(' ').map(&:to_i)
    next if a > m

    jobs << [a, b]
end
jobs.sort!{|a, b| b[1] <=> a[1]}

r = 0
jobs.each do |cost, reward|
    puts "#{cost}, #{reward}"
    i = free.bsearch_index{|f| f >= cost}
    next if i.nil?

    free.delete_at(i)
    r += reward
end
puts r