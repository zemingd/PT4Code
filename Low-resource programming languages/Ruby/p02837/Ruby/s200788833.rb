n = gets.chomp.to_i
ans = 0
testimony = Array.new(n).map{Array.new}
n.times do |i|
    a =  gets.chomp.to_i
    a.times do
        testimony[i] << gets.chomp.split(" ").map(&:to_i)
    end
end

[0, 1].repeated_permutation(n) do |bits|
    idx = 0
    flag = false
    bits.each do |bit|
        if bit == 1 then
            testimony[idx].each do |x, y|
                if bits[x-1] != y
                    flag = true
                    break
                end
            end
        end
        break if flag
        idx += 1
    end
    ans = bits.count(1) if !flag
end

puts ans