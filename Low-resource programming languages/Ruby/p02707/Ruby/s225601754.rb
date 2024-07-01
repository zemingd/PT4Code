n = gets.to_i
a = gets.split.map(&:to_i)
ary = Array.new(n, 0)

a.each do |n|
    ary[n-1] += 1
end

puts ary
