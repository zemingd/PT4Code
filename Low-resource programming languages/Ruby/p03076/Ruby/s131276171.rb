n = 0
arr = []
5.times.each do
    n = gets.chomp.to_i
    arr << n
end

arr.sort! { |a, b| (b - 1) % 10 - (a - 1) % 10 }

s = 0
arr.each do |n|
    mod = s % 10
    s += 10 - mod if mod != 0
    s += n
end

puts s