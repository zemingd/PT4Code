s_str, u_str = gets.split(" ").map{|str| str.chomp}

s_count, u_count = gets.split(" ").map{|i| i.to_i}

reject_str = gets.chomp

if s_str == reject_str
  s_count -= 1
elsif u_str == reject_str
  u_count -= 1
end

puts "#{s_count} #{u_count}"
