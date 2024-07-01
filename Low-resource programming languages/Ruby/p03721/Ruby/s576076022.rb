n, k = gets.strip.split.map(&:to_i)

array = {}

n.times do
    a, b = gets.strip.split.map(&:to_i)
    array[a] = 0 unless array.key?(a)
    array[a] += b
end

array = array.sort

count = 0
array.each do |key, value|
    if count + value >= k
        puts key
        break
    end
    count += value
end