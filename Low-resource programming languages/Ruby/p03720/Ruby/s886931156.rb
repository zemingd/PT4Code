N, M = gets.chomp.split.map :to_i;
count = Array.new(n,0)
a.times do 
    a, b = gets.split.map &:to_i
    count[a-1] += 1
    count[b-1] += 1
end
count.each do |i|
    puts i
end