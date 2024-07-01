n = gets.to_i
as = gets.split.map(&:to_i)

odd = []
even = []
as.length.times do |i|
    odd.push(as[i]) if i % 2 == 1
    even.push(as[i]) if i % 2 == 0
end

if n % 2 == 1
    puts (even.reverse + odd).join(' ')
else
    puts (odd.reverse + even).join(' ')
end