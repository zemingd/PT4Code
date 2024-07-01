s = gets.chomp.chars.map{|c| c.ord - 'a'.ord}
t = gets.chomp.chars.map{|c| c.ord - 'a'.ord}
matrix = Array.new(26){ Array.new(26, false) }

(0...s.size).each do |i|
  matrix[s[i]][t[i]] = true
end

if matrix.all?{|row| row.count(true) <= 1} && matrix.transpose.all?{|row| row.count(true) <= 1}
  puts 'Yes'
else
  puts 'No'
end