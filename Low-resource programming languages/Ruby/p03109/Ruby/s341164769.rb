require "date"
s=gets.split("/").map(&:to_i)
puts Date.new(s[0],s[1],s[2])<=Date.new(2019,4,30) ? "Heisei" : "TBD"