N = gets.to_i
a = Array.new

N.times do |i|
    a[i] = gets.to_i-1
end

count = 0
N.times do |answer|
    if count == 1
        puts answer
        exit
    end
    i = a[i]
end
puts -1