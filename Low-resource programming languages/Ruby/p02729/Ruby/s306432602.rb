input = gets.chomp.split
n = input[0].to_i
m = input[1].to_i

count = 0

if n >= 1
    (1..n-1).each do |i|
        count += i
    end
end

if m >= 2
    (1..m-1).each do |i|
        count += i
    end
end

puts count