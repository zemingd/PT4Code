s = gets.chomp.split('')
t = gets.chomp.split('')
puts s.group_by(&:itself).map{|k, v| v.size} == t.group_by(&:itself).map{|k, v| v.size} ? 'Yes' : 'No'