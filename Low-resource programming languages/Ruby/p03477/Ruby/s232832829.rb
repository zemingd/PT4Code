n,a,b = gets.split.map(&:to_i)

sum = 0
(1..n).each do |i|
        cnt = 0
        i.to_s.split.each do |j|
                cnt += j.to_i
        end
        sum += cnt if cnt >= a && cnt <= b
end

puts sum