H,W = gets.split.map(&:to_i)
a = H.times.map { gets.chomp.chars }
2.times do
  a.delete_if { |h| h.count('#') == 0 }
  a = a.transpose
end
puts a.map(&:join)