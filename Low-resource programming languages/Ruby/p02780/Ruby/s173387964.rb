n, k = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i)
array_pick =[[0, 0]]

(n-k+1).times do |i|
    if array_pick[-1].inject(:+) < array[i..i+(k-1)].inject(:+)
        array_pick << array[i..i+(k-1)]
    end
end

result = 0

array_pick[-1].each do |x|
    result += (1..x).to_a.inject(:+)/x.to_f
end

puts result
