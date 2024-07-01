def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

exit if $0 != __FILE__

require 'date'

cout Date.parse(gets) <= Date.parse('2019/04/30') ? 'Heisei' : 'TBD'
