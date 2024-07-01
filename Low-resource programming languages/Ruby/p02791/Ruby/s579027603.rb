N = gets.to_i
P = gets.chomp.split().map(&:to_i)
min = 0
answer = 0
N.times do |n|
    if n == 0||min>P[n]
        min = P[n]
        answer = answer +1
    end
end
puts answer