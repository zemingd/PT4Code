n = gets.to_i
array = gets.split.map(&:to_i)
total = 0

num = 0
while num < n do
    for n in 1..n
    bimi = array[num].to_i * array[num + n].to_i 
    total = total + bimi
    end
    num = num + 1
end

puts total