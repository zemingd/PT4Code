n,k,q=gets.chomp.split(" ").map(&:to_i)

array = Array.new(n, 0)

q.times do
    a = gets.to_i
    array[a-1] = array[a-1] + 1
end

l = q-k
array.each do |i|
    puts i <= l ? "No" : "Yes"
end
