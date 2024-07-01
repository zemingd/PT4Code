n = gets.to_i
a = gets.split.map(&:to_i)
types =  (a.group_by { |a_i| a_i / 400 }).length
a_c =  a.count {|a_i|a_i>=3200}
puts "#{types - (a_c ? 1 : 0)} #{types + a_c - 1}"