a,b=gets.split.map(&:to_i)
s=gets.chomp
puts s[a]=="-" && s.count("-")==1 ? :Yes : :No