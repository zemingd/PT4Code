n, k, q = gets.chomp.split.map(&:to_i)

answer_of_a_n = Array.new(n, 0)

q.times do |n|
    ai =  gets.chomp.to_i
    answer_of_a_n[ai - 1] += 1
end

answer_of_a_n.each do |an|
    puts k - q + an > 0 ? 'Yes' : 'No'
end
