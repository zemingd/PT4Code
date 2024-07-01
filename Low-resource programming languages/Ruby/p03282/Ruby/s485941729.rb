s = gets.chomp
k = gets.chomp.to_i

/(1*)([23456789]*)/ =~ s
first = Regexp.last_match[1]
last  = Regexp.last_match[2]

if k <= first.size then
  puts 1.to_s
else
  puts Regexp.last_match[2][0]
end