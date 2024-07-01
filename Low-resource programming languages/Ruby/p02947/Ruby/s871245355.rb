n = gets.chomp.to_i
ana = []
n.times do |i|
  ana << gets.chomp.chars.sort.join
end
puts ana.group_by(&:itself).select{|k, v| v.size > 1 }.map(&:first).count**2