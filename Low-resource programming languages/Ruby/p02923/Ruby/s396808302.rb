n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)
step = 0
count = 0

(n-1).times do |i|
    if h[i] >= h[i+1]
        step += 1
    else
        step = 0
    end
    count = step if step > count
end

puts count