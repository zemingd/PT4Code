require 'date'
d = gets
dd = Date.strptime(d, '%Y/%m/%d')
tdb = Date.new(2019, 05, 01)
if(dd < tdb)
  puts "Heisei"
else
  puts "TBD"
end
