n, k = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i)
array_pick =[]

(n-k+1).times do |i|
    array_pick << array[i..i+(k-1)]
end

saidai = array_pick.max_by{|x| x.inject(:+)}

result = 0
saidai.each do |x|
    result += (1..x).to_a.inject(:+)/x.to_f
end

puts result
