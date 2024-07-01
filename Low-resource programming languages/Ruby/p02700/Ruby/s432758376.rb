a,b,c,d=gets.split.map &:to_f
puts (c/b).ceil<=(a/d).ceil ? "Yes" : "No"