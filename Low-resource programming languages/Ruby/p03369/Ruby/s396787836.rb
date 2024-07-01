s=gets.chomp.split("")
ramen = 700
ramen+=100 if s[0]=="o"
ramen+=100 if s[1]=="o"
ramen+=100 if s[2]=="o"
puts ramen