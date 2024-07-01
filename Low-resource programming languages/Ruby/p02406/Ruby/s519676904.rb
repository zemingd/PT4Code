n = gets.to_i
[*1..n].each do |v|
  print " #{v}" if ( v % 3 ).zero? || v.to_s.include?('3')
end
puts