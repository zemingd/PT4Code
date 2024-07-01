s = gets.to_i
if s % s.to_s.chars.map{|d|d.to_i}.sum == 0
  puts "Yes"
else
  puts "No"
end
