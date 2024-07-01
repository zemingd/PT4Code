a,b,c=gets.split.map &:to_i
puts ((a..b)===c||(b..a)===c)?'Yes':'No'