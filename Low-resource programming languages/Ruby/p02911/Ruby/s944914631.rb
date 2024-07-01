n, k, q = gets.split(" ").map(&:to_i)

seikai = []
q.times do
  seikai << gets.chomp.to_i
end

score = Array.new(n, k-q)

seikai.each do |i|
    score[(i-1)] += 1
end

h = 1

score.each do |i|
    if i > 0
        puts "Yes"
    else
        puts "No"
    end
    h += 1
end
