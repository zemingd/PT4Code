a, b = gets.chomp.split(' ').map(&:to_i)
s = gets.chomp
puts (Regexp.compile("\\d{#{a.to_s}}-\\d{#{b.to_s}}").match(s) ? "Yes" : "No")