N, K = gets.split(" ").map(&:to_i)
H = gets.split(" ").map(&:to_i).sort
sum = 0

K.times do
    H.pop    
end

H.each do |n|
    sum += n
end

puts sum