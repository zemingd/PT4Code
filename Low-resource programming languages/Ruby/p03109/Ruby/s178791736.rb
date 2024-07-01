require 'date'

s = gets

x = Date.parse(s)

if x >= Date.parse('2019-05-01') then
	puts 'TBD'
else
	puts 'Heisei'
end
