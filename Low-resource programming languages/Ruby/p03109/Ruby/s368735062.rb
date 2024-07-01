require "date"

a = Date.parse(gets.to_s);
b = Date.parse("2019/4/30");

if a > b
  puts 'TBD'
else
  puts 'Heisei'
end