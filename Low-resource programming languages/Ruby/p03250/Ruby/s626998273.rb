a=gets.chomp
b=gets.chomp
puts a==b.tr(a.tr(a,b),a)?:Yes: :No
