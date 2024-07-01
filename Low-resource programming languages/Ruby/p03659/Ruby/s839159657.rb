N = gets.to_i
a = gets.strip.split.map(&:to_i)
sum = a.inject(:+)
slice = 0
answer = []

for i in 0..N-2

    slice += a[i]

    answer[i] = (sum - (2 * slice)).abs

end

puts answer.min 

