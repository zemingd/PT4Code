i = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)
sum = 0
(0..i-1).each do |n|
    sum += b[n]
    if a[n]+1 == a[n+1]
        sum +=c[a[n]-1]
    end
end
puts sum