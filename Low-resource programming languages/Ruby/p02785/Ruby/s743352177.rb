h, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
if h <= k 
    puts 0
    exit
end
k.times do 
    a.delete_at(a.find_index(a.max))
end
p a.inject(:+)