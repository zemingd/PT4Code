N = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
count = a.min
sum = 0
ans = []
while (count <= a.max)
    a.each do |a|
       sum += (count - a) ** 2
    end
    ans << sum
    sum = 0
    count += 1
end

puts (#{ans.min})