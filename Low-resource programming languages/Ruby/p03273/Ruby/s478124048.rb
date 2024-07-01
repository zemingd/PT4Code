h, w = gets.split.map(&:to_i)
a = []
h.times do
  a << gets.chomp.chars
end

([h, w].max * 2).times do
  a.delete_if {|s| s.count('.') == s.size } 
  a = a.transpose
end

a.each do |s|
  puts s.join
end
