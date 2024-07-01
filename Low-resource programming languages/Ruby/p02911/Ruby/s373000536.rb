n,k,q=gets.chomp.split(" ").map(&:to_i)

array = Array.new(n, 0)

q.times do
    a = gets.to_i
    (0..(n-1)).each do |i|
        if i == a-1
            array[i] = array[i] + 1
        end
    end
end

l = q-k
array.each do |i|
    puts i <= l ? "No" : "Yes"
end
