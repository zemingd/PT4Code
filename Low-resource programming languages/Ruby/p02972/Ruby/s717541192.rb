n = gets.to_i
a = gets.split.map(&:to_i)
box = Array.new(n+1, 0)

n.downto(1) do |i|
    sum = 0
    2.upto(n) do |j|
        break if i * j > n
        sum ^= box[i * j]
    end
    box[i] = a[i-1] ^ sum
end

box.map!.with_index{|e, i| e == 1 ? i : nil}.compact!
puts box.size, box.join(" ")