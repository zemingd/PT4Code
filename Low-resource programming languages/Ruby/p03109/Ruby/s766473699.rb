require 'time'
s = gets.chop.to_s
time = Time.parse(s)
if time <= Time.parse("2019/04/30")
  puts 'Heisei'
else
  puts 'TBD'
end