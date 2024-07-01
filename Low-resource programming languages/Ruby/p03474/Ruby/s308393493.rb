a,b=gets.split.map &:to_i
puts (gets=~/\d{#{a}}-\d{#{b}}/ ? "Yes" : "No")
