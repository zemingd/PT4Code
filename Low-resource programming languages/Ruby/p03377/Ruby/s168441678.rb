a,b,c=gets.split.map(&:to_i)
puts (a..a+b).include?(c)?"YES":"NO"