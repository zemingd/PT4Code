ptn = Regexp.new("\\d{%s}-\\d{%s}" % gets.split)
puts (ptn =~ gets.chomp) ? "Yes" : "No"