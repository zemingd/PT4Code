require 'time'

dt = STDIN.gets.chop
puts (if DateTime.parse('2019-04-30') >= DateTime.parse(dt) then "Heisei" else "TBD" end)