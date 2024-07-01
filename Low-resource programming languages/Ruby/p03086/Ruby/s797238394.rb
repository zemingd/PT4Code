s = gets.split("")
count = 0
max = 0
s.each do |c|
    if ['A', 'C', 'G', 'T'].any? {|w| w.eql?(c)}
        count+=1
    elsif count > max
        max =  count
        count = 0
    end
end
puts max