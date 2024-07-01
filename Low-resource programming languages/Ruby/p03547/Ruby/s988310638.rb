X, Y = gets.chomp.split(" ").map{|s| s.to_i(16) }
case X <=> Y
  when 1 then puts ">"
  when 0 then puts "="
  when -1 then puts "<"
end