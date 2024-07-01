a=gets.split.map(&:to_i).sort{|c,d| (-1)*(c<=>d)}
a.each{|b| print b," "}
print"\n"