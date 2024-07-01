require 'date'

s = gets
x = Date.parse(s)
print x > Date.parse('2019-05-01') ? "TBD" : "Heisei"