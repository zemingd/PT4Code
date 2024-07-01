n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
q = gets.chomp.to_i

q.times do
    b,c = gets.chomp.split.map(&:to_i)

    a.map!{|x| x==b ? c : x}
    puts a.sum
end