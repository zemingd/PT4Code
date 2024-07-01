s = gets.chomp
t = gets.chomp
t.chars.each do |c|
  next if s =~ /#{c}/
  puts -1
  exit
end
l = t.length
str = s * (l.to_f / s.length).ceil
t_re = Regexp.new(t.chars.join('.*'))
until str =~ t_re
  str += s
end
puts $`.length + $&.length
