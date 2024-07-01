a = []
gets.split.map(&:to_i)[0].times do
    a << gets.chomp
end
puts a.sort.join