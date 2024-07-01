flag=false
gets.chomp.chars.each_cons(2){|a,b|a==b&&flag=true}
puts flag ? "Bad":"Good"