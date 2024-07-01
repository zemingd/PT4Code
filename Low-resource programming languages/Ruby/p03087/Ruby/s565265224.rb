length, n = gets.split.map(&:to_i)
text = gets.chomp
list = []
(length-1).times {|i| list.push(i+1) if text[i] == 'A' and text[i+1] == 'C'}

n.times do
    s, e = gets.split.map(&:to_i)
    p list.count{|i| i>=s and i<e}
end