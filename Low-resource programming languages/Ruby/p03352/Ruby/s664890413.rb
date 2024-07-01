x = gets.chomp.to_i
ans = [1]
loop_time = Math.sqrt(x).to_i

(2..loop_time).each do |i|
    (2..10).each do |j|
        tmp = i ** j
        break if tmp > x
        ans << tmp
    end
end

puts ans.max