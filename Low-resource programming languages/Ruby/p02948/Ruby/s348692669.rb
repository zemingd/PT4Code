n, m = gets.split.map!(&:to_i)
ab = n.times.map{gets.split.map(&:to_i)}.sort{|x,y| -x[1] <=> -y[1]}

ans = 0
(1..m).each do |day|
    ab.each_with_index do |x,index|
        if x[0] <= day then
            ans += x[1]
            ab.delete_at(index)
            break
        end
    end
end

puts ans