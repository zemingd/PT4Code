arr = Array.new(10**5 + 2,0)

gets
a = gets.chomp!
a = a.split(' ').map(&:to_i)

a.each do |i|
    arr[i-1] += 1
    arr[i] += 1
    arr[i+1] += 1
end

puts arr.max