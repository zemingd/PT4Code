
N = gets.to_i
rank = []

N.times do |i|
    s,x = gets.split(' ')
    x = x.to_i * (-1)
    rank << [s, x, i]
end

rank.sort!
rank.each do |s, x, i|
    puts i+1
end