#coding : utf-8
require 'scanf'
input = scanf("%d %d")
a = input[0]; b = input[1]
sign = if a > b then ">"
        elsif a == b then "=="
        elsif a < b then "<"
end
puts "a #{sign} b"