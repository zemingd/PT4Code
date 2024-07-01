N,M = gets.split.map(&:to_i)
LRs = M.times.map{gets.split.map(&:to_i)}
open = []
if M == 1
    puts LRs[0][1]
else
    LRs.each do |lr|
        open << (lr[0]..lr[1]).to_a.map(&:to_s)    
    end
    puts open.flatten.select{|o| open.flatten.count(o)>=M}.uniq.count
end