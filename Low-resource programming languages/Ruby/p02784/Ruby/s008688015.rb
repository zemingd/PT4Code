h, n = gets.chomp.split(" ").map(&:to_i)
dmg = gets.chomp.split(" ").map(&:to_i)
atk = 0

(0...n).each do |i|
  atk += dmg[i]
end

if atk >= h
  puts 'Yes'
else
  puts 'No'
end