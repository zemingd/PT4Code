#encoding:utf-8 No.0007 2014.9.30
weeks = gets.chomp
debt = 100000

weeks.to_i.times do
 debt += debt * 0.05
 debt = (debt/1000).ceil * 1000
end

puts debt