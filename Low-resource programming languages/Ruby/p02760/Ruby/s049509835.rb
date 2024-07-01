require 'set'
CARD = 3.times.map{gets.split.map(&:to_i)}.flatten
N = gets.to_i
DECRALE = N.times.map { gets.to_i }

DECRALE.each do |i| 
    CARD.map!{|x| x==i ? 0 : x}
end

zero_index = CARD.each_with_index.map { |x,i| x==0 ? i : nil }.compact.to_set
BINGO = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,6,8],[0,4,8],[2,4,6]]
ans = "No"
BINGO.each.with_index do |x,i|
    if x.to_set.subset?(zero_index) then
        ans = "Yes"
        break
    end
end

puts ans